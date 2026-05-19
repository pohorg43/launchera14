.class public final Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;->getLightWindowAnimation(Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $cropRect:Landroid/graphics/Rect;

.field public final synthetic $isOpen:Z

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $tmpPos:Landroid/graphics/Point;

.field public final synthetic $transaction:Lcom/android/quickstep/util/SurfaceTransaction;

.field public final synthetic $windowCornerRadius:F

.field private final mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field private final mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;


# direct methods
.method public constructor <init>(ZJLandroid/view/animation/PathInterpolator;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransaction;Landroid/graphics/Matrix;FLandroid/graphics/Point;Landroid/graphics/Rect;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 21

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    iput-boolean v1, v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$isOpen:Z

    move-object v4, p5

    iput-object v4, v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v4, p6

    iput-object v4, v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$transaction:Lcom/android/quickstep/util/SurfaceTransaction;

    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    move/from16 v4, p8

    iput v4, v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$windowCornerRadius:F

    move-object/from16 v4, p9

    iput-object v4, v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    move-object/from16 v4, p10

    iput-object v4, v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    move-object/from16 v4, p11

    iput-object v4, v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    if-eqz v1, :cond_3b

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

    goto :goto_51

    :cond_3b
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

    :goto_51
    iput-object v4, v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    if-eqz v1, :cond_6e

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const v4, 0x3f19999a  # 0.6f

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

    goto :goto_86

    :cond_6e
    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3f19999a  # 0.6f

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

    :goto_86
    iput-object v1, v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final getMAlpha()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public final getMScale()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public onUpdate(FZ)V
    .registers 11

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, p2, :cond_b5

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$transaction:Lcom/android/quickstep/util/SurfaceTransaction;

    iget-object v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    iget v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-nez v4, :cond_1a

    iget-boolean v6, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$isOpen:Z

    if-nez v6, :cond_22

    :cond_1a
    if-ne v4, v5, :cond_21

    iget-boolean v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$isOpen:Z

    if-nez v4, :cond_21

    goto :goto_22

    :cond_21
    move v5, v0

    :cond_22
    :goto_22
    if-eqz v5, :cond_64

    iget-object v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v6, v7, v7, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$windowCornerRadius:F

    new-instance v5, Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setLayer(I)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_b1

    :cond_64
    iget-object v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_72

    iget-object v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_7d

    :cond_72
    iget-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    iget-object v5, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Point;->set(II)V

    :goto_7d
    iget-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_94

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9b

    :cond_94
    iget-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_9b
    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :goto_b1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_b5
    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;->$transaction:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
