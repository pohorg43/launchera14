.class public final Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $centerX:F

.field public final synthetic $centerY:F

.field public final synthetic $closeFromSplitScreen:Z

.field public final synthetic $cropRect:Landroid/graphics/Rect;

.field public final synthetic $isFoldScreenExpanded:Z

.field public final synthetic $isOpen:Z

.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $tmpPos:Landroid/graphics/Point;

.field public final synthetic $windowCornerRadius:F

.field private final mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field private final mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;


# direct methods
.method public constructor <init>(ZJLandroid/view/animation/PathInterpolator;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZFFZLandroid/graphics/Matrix;FLcom/android/launcher3/Launcher;Landroid/graphics/Point;Landroid/graphics/Rect;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 25

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    iput-boolean v1, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isOpen:Z

    move-object v4, p5

    iput-object v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move v4, p6

    iput-boolean v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$closeFromSplitScreen:Z

    move/from16 v4, p7

    iput v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$centerX:F

    move/from16 v4, p8

    iput v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$centerY:F

    move/from16 v4, p9

    iput-boolean v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isFoldScreenExpanded:Z

    move-object/from16 v4, p10

    iput-object v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    move/from16 v4, p11

    iput v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$windowCornerRadius:F

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$launcher:Lcom/android/launcher3/Launcher;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    if-eqz v1, :cond_4b

    new-instance v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    long-to-float v8, v2

    move-object p5, v4

    move-object p6, p0

    move/from16 p7, v5

    move/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v8

    move-object/from16 p11, p4

    invoke-direct/range {p5 .. p11}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_61

    :cond_4b
    new-instance v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    long-to-float v8, v2

    move-object p5, v4

    move-object p6, p0

    move/from16 p7, v5

    move/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v8

    move-object/from16 p11, p4

    invoke-direct/range {p5 .. p11}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_61
    iput-object v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    if-eqz v1, :cond_7e

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const v4, 0x3f59999a  # 0.85f

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    long-to-float v2, v2

    move-object p5, v1

    move-object p6, p0

    move/from16 p7, v4

    move/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v2

    move-object/from16 p11, p4

    invoke-direct/range {p5 .. p11}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_96

    :cond_7e
    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3f59999a  # 0.85f

    const/4 v6, 0x0

    long-to-float v2, v2

    move-object p5, v1

    move-object p6, p0

    move/from16 p7, v4

    move/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v2

    move-object/from16 p11, p4

    invoke-direct/range {p5 .. p11}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_96
    iput-object v1, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final getMAlpha()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public final getMScale()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public onUpdate(FZ)V
    .registers 16

    new-instance p2, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p2}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_122

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v5}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    iget v6, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v7, 0x1

    if-nez v6, :cond_1d

    iget-boolean v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isOpen:Z

    if-nez v8, :cond_25

    :cond_1d
    if-ne v6, v7, :cond_24

    iget-boolean v6, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isOpen:Z

    if-nez v6, :cond_24

    goto :goto_25

    :cond_24
    move v7, v2

    :cond_25
    :goto_25
    const/4 v6, 0x0

    if-eqz v7, :cond_d2

    iget-object v7, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    iget-boolean v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$closeFromSplitScreen:Z

    if-eqz v9, :cond_51

    iget-object v7, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    const-string v8, "it.startScreenSpaceBounds"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$centerX:F

    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$centerY:F

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float v7, v9, v7

    move v12, v8

    move v8, v7

    move v7, v12

    :cond_51
    iget-boolean v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isOpen:Z

    if-nez v9, :cond_87

    iget-boolean v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$closeFromSplitScreen:Z

    if-nez v9, :cond_87

    iget-boolean v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isFoldScreenExpanded:Z

    if-eqz v9, :cond_87

    iget-object v9, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v10, v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float/2addr v9, v10

    const/4 v10, 0x2

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v7, v9

    iget-object v9, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v11, v11, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {v9, v11, v10, v8}, Landroidx/constraintlayout/core/motion/b;->a(FFFF)F

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_90

    :cond_87
    iget-object v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v10, v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v9, v10, v10, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_90
    iget v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$windowCornerRadius:F

    iget-object v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v8, :cond_a2

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v8

    if-eqz v8, :cond_b4

    :cond_a2
    iget-boolean v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isOpen:Z

    if-eqz v7, :cond_ad

    iget v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$windowCornerRadius:F

    invoke-static {p1, v7, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    goto :goto_b3

    :cond_ad
    iget v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$windowCornerRadius:F

    invoke-static {p1, v6, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    :goto_b3
    move v7, v6

    :cond_b4
    new-instance v6, Landroid/graphics/Rect;

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v4, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    iget-object v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v4, v8}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    invoke-virtual {v5, v7}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    invoke-virtual {v5, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_11e

    :cond_d2
    iget-object v7, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_e0

    iget-object v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_eb

    :cond_e0
    iget-object v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    iget-object v8, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Point;->set(II)V

    :goto_eb
    iget-object v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v7, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_102

    iget-object v4, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_109

    :cond_102
    iget-object v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_109
    iget-object v4, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :goto_11e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_122
    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
