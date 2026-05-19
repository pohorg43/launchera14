.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToExternalScreen(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $closeWindowRect:Landroid/graphics/RectF;

.field public final synthetic $cropRect:Landroid/graphics/Rect;

.field public final synthetic $currentWindowRect:Landroid/graphics/RectF;

.field public final synthetic $homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final synthetic $homeToWindowPositionMap:Landroid/graphics/Matrix;

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $radius:Landroid/graphics/PointF;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $transformParams:Lcom/android/quickstep/util/TransformParams;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/Rect;Lcom/android/quickstep/util/TransformParams;)V
    .registers 10

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$homeToWindowPositionMap:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$currentWindowRect:Landroid/graphics/RectF;

    iput-object p5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$matrix:Landroid/graphics/Matrix;

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$closeWindowRect:Landroid/graphics/RectF;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$radius:Landroid/graphics/PointF;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$cropRect:Landroid/graphics/Rect;

    iput-object p9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;F)V
    .registers 11

    const-string v0, "currentRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    new-instance p2, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p2}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_62

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000  # 1.0f

    iget v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v5, v4, :cond_37

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$homeToWindowPositionMap:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$currentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$closeWindowRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$currentWindowRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$radius:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    goto :goto_4c

    :cond_37
    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v5, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$cropRect:Landroid/graphics/Rect;

    iget-object v6, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_4c
    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_62
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
