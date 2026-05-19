.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToFloatOrMiniWindow(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $angle:[F

.field public final synthetic $closeWindowRect:Landroid/graphics/RectF;

.field public final synthetic $cropRect:Landroid/graphics/Rect;

.field public final synthetic $homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $radius:Landroid/graphics/PointF;

.field public final synthetic $startCropRect:Landroid/graphics/Rect;

.field public final synthetic $targetCropRect:Landroid/graphics/Rect;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $taskViewSimulator:Lcom/android/quickstep/util/TaskViewSimulator;

.field public final synthetic $transformParams:Lcom/android/quickstep/util/TransformParams;

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;[FLandroid/graphics/PointF;Lcom/android/quickstep/util/TransformParams;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Lcom/android/quickstep/util/TaskViewSimulator;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/RectF;",
            "[F",
            "Landroid/graphics/PointF;",
            "Lcom/android/quickstep/util/TransformParams;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$taskViewSimulator:Lcom/android/quickstep/util/TaskViewSimulator;

    iput-object p5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$cropRect:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$startCropRect:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$targetCropRect:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$matrix:Landroid/graphics/Matrix;

    iput-object p9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$closeWindowRect:Landroid/graphics/RectF;

    iput-object p10, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$angle:[F

    iput-object p11, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$radius:Landroid/graphics/PointF;

    iput-object p12, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;F)V
    .registers 13

    const-string v0, "currentRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_16

    goto :goto_19

    :cond_16
    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setCurrentRect(Landroid/graphics/RectF;)V

    :goto_19
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v0}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez v1, :cond_28

    return-void

    :cond_28
    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2b
    if-ge v3, v1, :cond_aa

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    const/high16 v6, 0x3f800000  # 1.0f

    iget v7, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v8, 0x1

    if-ne v8, v7, :cond_7e

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$taskViewSimulator:Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$cropRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$startCropRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$targetCropRect:Landroid/graphics/Rect;

    invoke-interface {v4, v7, v8, v9, p2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculatePreviewCurrentCropRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$closeWindowRect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v7, p1, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_79

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$angle:[F

    aget v7, v7, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v4, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_79
    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$radius:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    goto :goto_94

    :cond_7e
    iget-object v7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v8, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$cropRect:Landroid/graphics/Rect;

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v4, v7

    :goto_94
    invoke-virtual {v5, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_aa
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
