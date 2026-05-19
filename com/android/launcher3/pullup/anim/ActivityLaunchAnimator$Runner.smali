.class public final Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Runner"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActivityLaunchAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,575:1\n1282#2,2:576\n*S KotlinDebug\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner\n*L\n348#1:576,2\n*E\n"
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private cancelled:Z

.field private final context:Landroid/content/Context;

.field private final controller:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

.field private final invertMatrix:Landroid/graphics/Matrix;

.field private final launchContainer:Landroid/view/ViewGroup;

.field private final matrix:Landroid/graphics/Matrix;

.field private onTimeout:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;

.field private timedOut:Z

.field private final transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private windowCrop:Landroid/graphics/Rect;

.field private windowCropF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;",
            ")V"
        }
    .end annotation

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->controller:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    invoke-interface {p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    new-instance p2, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p2, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->invertMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    new-instance p1, Lcom/android/launcher3/model/c1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->onTimeout$lambda$0(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)V

    return-void
.end method

.method public static final synthetic access$getController$p(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->controller:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    return-object p0
.end method

.method public static final synthetic access$invoke(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method private final applyStateToWindow(Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;)V
    .registers 9

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    mul-float/2addr v1, v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getTop()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->invertMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v1, v2}, Ly4/h;->a(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Lu4/a;->b(F)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Lu4/a;->b(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Lu4/a;->b(F)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Lu4/a;->b(F)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    iget p1, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withLayer(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getVisible()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p2, v0, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-virtual {p0, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->onAnimationCancelled$lambda$4(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;Landroid/graphics/Rect;IFFFLandroid/view/RemoteAnimationTarget;Landroid/animation/ValueAnimator;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->initAnimator$lambda$3(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;Landroid/graphics/Rect;IFFFLandroid/view/RemoteAnimationTarget;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->onAnimationStart$lambda$1(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method private final initAnimator(Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->controller:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->createAnimatorState()Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getTopCornerRadius()F

    move-result v6

    invoke-virtual {v3}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getBottomCornerRadius()F

    move-result v8

    iget-object v4, p1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v0

    iget v1, v4, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x1

    aget v7, v0, v2

    const/4 v9, 0x0

    if-gt v1, v7, :cond_45

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    aget v7, v0, v2

    iget-object v10, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    add-int/2addr v10, v7

    if-lt v1, v10, :cond_45

    iget v1, v4, Landroid/graphics/Rect;->left:I

    aget v7, v0, v9

    if-gt v1, v7, :cond_45

    iget v1, v4, Landroid/graphics/Rect;->right:I

    aget v0, v0, v9

    iget-object v7, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    add-int/2addr v7, v0

    if-lt v1, v7, :cond_45

    goto :goto_46

    :cond_45
    move v2, v9

    :goto_46
    if-eqz v2, :cond_4f

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    move v7, v0

    invoke-direct {p0, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->makeAnim(Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->animator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_64

    new-instance v0, Lcom/android/launcher3/pullup/anim/a;

    move-object v1, v0

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/pullup/anim/a;-><init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;Landroid/graphics/Rect;IFFFLandroid/view/RemoteAnimationTarget;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_64
    return-void
.end method

.method private static final initAnimator$lambda$3(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;Landroid/graphics/Rect;IFFFLandroid/view/RemoteAnimationTarget;Landroid/animation/ValueAnimator;)V
    .registers 16

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$window"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->cancelled:Z

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p8

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getTop()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->lerp(IIF)F

    move-result v1

    invoke-static {v1}, Lu4/a;->b(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setTop(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getBottom()I

    move-result v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, p2, v0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->lerp(IIF)F

    move-result p2

    invoke-static {p2}, Lu4/a;->b(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setBottom(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setLeft(I)V

    invoke-virtual {p1, p3}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setRight(I)V

    invoke-static {p4, p5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setTopCornerRadius(F)V

    invoke-static {p6, p5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setBottomCornerRadius(F)V

    sget-object v1, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->Companion:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Companion;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x107

    move v2, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Companion;->getProgress(FJJ)F

    move-result p3

    const/high16 p4, 0x3f800000  # 1.0f

    cmpg-float p3, p3, p4

    const/4 p4, 0x1

    if-gez p3, :cond_69

    move p2, p4

    :cond_69
    invoke-virtual {p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setVisible(Z)V

    invoke-direct {p0, p7, p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->applyStateToWindow(Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;)V

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getTop()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getTop()I

    move-result p3

    if-eq p2, p3, :cond_b7

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getLeft()I

    move-result p3

    if-eq p2, p3, :cond_b7

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getBottom()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getBottom()I

    move-result p3

    if-eq p2, p3, :cond_b7

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getRight()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getRight()I

    move-result p3

    if-eq p2, p3, :cond_b7

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getTop()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setTop(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getLeft()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setLeft(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getRight()I

    move-result p2

    sub-int/2addr p2, p4

    invoke-virtual {p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setRight(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->getBottom()I

    move-result p2

    sub-int/2addr p2, p4

    invoke-virtual {p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;->setBottom(I)V

    :cond_b7
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->controller:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    invoke-interface {p0, p1, v0, p8}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->onLaunchAnimationProgress(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;FF)V

    return-void
.end method

.method private final invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 3

    :try_start_0
    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "ActivityLaunchAnimator"

    const-string v0, "invokeCallback onAnimationFinished failed: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method private final lerp(IIF)F
    .registers 4

    int-to-float p0, p1

    int-to-float p1, p2

    invoke-static {p0, p1, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private final makeAnim(Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/animation/ValueAnimator;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x107

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner$makeAnim$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner$makeAnim$1;-><init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "animator"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :array_22
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final onAnimationCancelled$lambda$4(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->controller:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    invoke-interface {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    return-void
.end method

.method private static final onAnimationStart$lambda$1(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->startAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method private final onAnimationTimedOut()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->cancelled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->timedOut:Z

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->controller:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    invoke-interface {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    return-void
.end method

.method private static final onTimeout$lambda$0(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->onAnimationTimedOut()V

    return-void
.end method

.method private final removeTimeout()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final startAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_18

    aget-object v4, p1, v3

    iget v5, v4, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v5, :cond_10

    const/4 v5, 0x1

    goto :goto_11

    :cond_10
    move v5, v2

    :goto_11
    if-eqz v5, :cond_15

    move-object v0, v4

    goto :goto_18

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_18
    :goto_18
    if-nez v0, :cond_2f

    const-string p1, "ActivityLaunchAnimator"

    const-string v0, "Aborting the animation as no window is opening"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->removeTimeout()V

    if-eqz p2, :cond_29

    invoke-direct {p0, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V

    :cond_29
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->controller:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    invoke-interface {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    return-void

    :cond_2f
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->initAnimator(Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->animator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_39
    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 4

    const-string/jumbo v0, "onAnimationCancelled: receice cancel timedOut="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->timedOut:Z

    const-string v2, "ActivityLaunchAnimator"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->timedOut:Z

    if-eqz v0, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->cancelled:Z

    invoke-direct {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->removeTimeout()V

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/t;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->removeTimeout()V

    iget-boolean p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->timedOut:Z

    if-eqz p1, :cond_d

    if-eqz p5, :cond_c

    invoke-direct {p0, p5}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V

    :cond_c
    return-void

    :cond_d
    iget-boolean p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->cancelled:Z

    if-eqz p1, :cond_12

    return-void

    :cond_12
    iget-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p3, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {p3, p0, p2, p5}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final postTimeout$OplusLauncher_RealmePallExportAallRelease()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->access$getLAUNCH_TIMEOUT$cp()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
