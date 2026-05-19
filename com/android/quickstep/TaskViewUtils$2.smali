.class Lcom/android/quickstep/TaskViewUtils$2;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field public mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field public final synthetic val$cropRect:Landroid/graphics/Rect;

.field public final synthetic val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic val$remoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;


# direct methods
.method public constructor <init>([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;)V
    .registers 12

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$remoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$cropRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43050000  # 133.0f

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/quickstep/TaskViewUtils$2;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v4, 0x436a0000  # 234.0f

    const/high16 v5, 0x43850000  # 266.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/quickstep/TaskViewUtils$2;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .registers 10

    iget-object p1, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$remoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_55

    aget-object v1, p1, v0

    new-instance v2, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v2}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v3, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/TaskViewUtils$2;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v5, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v4}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->getStartValue()F

    move-result v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_44

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/TaskViewUtils$2;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_4b

    :cond_44
    iget-object v4, p0, Lcom/android/quickstep/TaskViewUtils$2;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :goto_4b
    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_55
    return-void
.end method
