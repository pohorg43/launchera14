.class public final synthetic Lcom/oplus/quickstep/utils/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$OnUpdateListener;


# instance fields
.field public final synthetic a:Landroid/graphics/Matrix;

.field public final synthetic b:Landroid/graphics/RectF;

.field public final synthetic c:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic d:Landroid/graphics/PointF;

.field public final synthetic e:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field public final synthetic f:Landroid/graphics/RectF;

.field public final synthetic g:F

.field public final synthetic h:Landroid/graphics/Rect;

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:Landroid/graphics/Matrix;

.field public final synthetic l:Landroid/graphics/RectF;

.field public final synthetic m:[F

.field public final synthetic n:Landroid/graphics/RectF;

.field public final synthetic o:Landroid/view/SurfaceControl;

.field public final synthetic p:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic q:Landroid/graphics/Matrix;

.field public final synthetic r:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/PointF;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;[FLandroid/graphics/RectF;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .registers 21

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->a:Landroid/graphics/Matrix;

    move-object v1, p2

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->b:Landroid/graphics/RectF;

    move-object v1, p3

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->c:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p4

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->d:Landroid/graphics/PointF;

    move-object v1, p5

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->e:Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-object v1, p6

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->f:Landroid/graphics/RectF;

    move v1, p7

    iput v1, v0, Lcom/oplus/quickstep/utils/e;->g:F

    move-object v1, p8

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->h:Landroid/graphics/Rect;

    move v1, p9

    iput v1, v0, Lcom/oplus/quickstep/utils/e;->i:F

    move v1, p10

    iput v1, v0, Lcom/oplus/quickstep/utils/e;->j:F

    move-object v1, p11

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->k:Landroid/graphics/Matrix;

    move-object v1, p12

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->l:Landroid/graphics/RectF;

    move-object v1, p13

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->m:[F

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->n:Landroid/graphics/RectF;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->o:Landroid/view/SurfaceControl;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->p:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->q:Landroid/graphics/Matrix;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/oplus/quickstep/utils/e;->r:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v21, p3

    iget-object v1, v0, Lcom/oplus/quickstep/utils/e;->a:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/oplus/quickstep/utils/e;->b:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oplus/quickstep/utils/e;->c:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, v0, Lcom/oplus/quickstep/utils/e;->d:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/oplus/quickstep/utils/e;->e:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v6, v0, Lcom/oplus/quickstep/utils/e;->f:Landroid/graphics/RectF;

    iget v7, v0, Lcom/oplus/quickstep/utils/e;->g:F

    iget-object v8, v0, Lcom/oplus/quickstep/utils/e;->h:Landroid/graphics/Rect;

    iget v9, v0, Lcom/oplus/quickstep/utils/e;->i:F

    iget v10, v0, Lcom/oplus/quickstep/utils/e;->j:F

    iget-object v11, v0, Lcom/oplus/quickstep/utils/e;->k:Landroid/graphics/Matrix;

    iget-object v12, v0, Lcom/oplus/quickstep/utils/e;->l:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/oplus/quickstep/utils/e;->m:[F

    iget-object v14, v0, Lcom/oplus/quickstep/utils/e;->n:Landroid/graphics/RectF;

    iget-object v15, v0, Lcom/oplus/quickstep/utils/e;->o:Landroid/view/SurfaceControl;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/oplus/quickstep/utils/e;->p:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/oplus/quickstep/utils/e;->q:Landroid/graphics/Matrix;

    move-object/from16 v17, v1

    iget-object v0, v0, Lcom/oplus/quickstep/utils/e;->r:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v21}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/PointF;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;[FLandroid/graphics/RectF;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method
