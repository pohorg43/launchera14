.class public final synthetic Li0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$OnUpdateListener;


# instance fields
.field public final synthetic a:Landroid/graphics/Matrix;

.field public final synthetic b:Landroid/graphics/RectF;

.field public final synthetic c:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic d:Landroid/graphics/Point;

.field public final synthetic e:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field public final synthetic f:Landroid/graphics/RectF;

.field public final synthetic g:Landroid/graphics/PointF;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:Landroid/graphics/Rect;

.field public final synthetic l:F

.field public final synthetic m:Landroid/graphics/RectF;

.field public final synthetic n:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic o:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic p:Landroid/graphics/Matrix;

.field public final synthetic q:I

.field public final synthetic r:Landroid/view/SurfaceControl;

.field public final synthetic s:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic t:Landroid/graphics/Matrix;

.field public final synthetic u:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$FloatRef;FFLandroid/graphics/Rect;FLandroid/graphics/RectF;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Matrix;ILandroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .registers 24

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Li0/a;->a:Landroid/graphics/Matrix;

    move-object v1, p2

    iput-object v1, v0, Li0/a;->b:Landroid/graphics/RectF;

    move-object v1, p3

    iput-object v1, v0, Li0/a;->c:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p4

    iput-object v1, v0, Li0/a;->d:Landroid/graphics/Point;

    move-object v1, p5

    iput-object v1, v0, Li0/a;->e:Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-object v1, p6

    iput-object v1, v0, Li0/a;->f:Landroid/graphics/RectF;

    move-object v1, p7

    iput-object v1, v0, Li0/a;->g:Landroid/graphics/PointF;

    move-object v1, p8

    iput-object v1, v0, Li0/a;->h:Lkotlin/jvm/internal/Ref$FloatRef;

    move v1, p9

    iput v1, v0, Li0/a;->i:F

    move v1, p10

    iput v1, v0, Li0/a;->j:F

    move-object v1, p11

    iput-object v1, v0, Li0/a;->k:Landroid/graphics/Rect;

    move v1, p12

    iput v1, v0, Li0/a;->l:F

    move-object v1, p13

    iput-object v1, v0, Li0/a;->m:Landroid/graphics/RectF;

    move-object/from16 v1, p14

    iput-object v1, v0, Li0/a;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 v1, p15

    iput-object v1, v0, Li0/a;->o:Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 v1, p16

    iput-object v1, v0, Li0/a;->p:Landroid/graphics/Matrix;

    move/from16 v1, p17

    iput v1, v0, Li0/a;->q:I

    move-object/from16 v1, p18

    iput-object v1, v0, Li0/a;->r:Landroid/view/SurfaceControl;

    move-object/from16 v1, p19

    iput-object v1, v0, Li0/a;->s:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    move-object/from16 v1, p20

    iput-object v1, v0, Li0/a;->t:Landroid/graphics/Matrix;

    move-object/from16 v1, p21

    iput-object v1, v0, Li0/a;->u:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move/from16 v24, p3

    iget-object v1, v0, Li0/a;->a:Landroid/graphics/Matrix;

    iget-object v2, v0, Li0/a;->b:Landroid/graphics/RectF;

    iget-object v3, v0, Li0/a;->c:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, v0, Li0/a;->d:Landroid/graphics/Point;

    iget-object v5, v0, Li0/a;->e:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v6, v0, Li0/a;->f:Landroid/graphics/RectF;

    iget-object v7, v0, Li0/a;->g:Landroid/graphics/PointF;

    iget-object v8, v0, Li0/a;->h:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v9, v0, Li0/a;->i:F

    iget v10, v0, Li0/a;->j:F

    iget-object v11, v0, Li0/a;->k:Landroid/graphics/Rect;

    iget v12, v0, Li0/a;->l:F

    iget-object v13, v0, Li0/a;->m:Landroid/graphics/RectF;

    iget-object v14, v0, Li0/a;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v15, v0, Li0/a;->o:Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 p1, v1

    iget-object v1, v0, Li0/a;->p:Landroid/graphics/Matrix;

    move-object/from16 v16, v1

    iget v1, v0, Li0/a;->q:I

    move/from16 v17, v1

    iget-object v1, v0, Li0/a;->r:Landroid/view/SurfaceControl;

    move-object/from16 v18, v1

    iget-object v1, v0, Li0/a;->s:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    move-object/from16 v19, v1

    iget-object v1, v0, Li0/a;->t:Landroid/graphics/Matrix;

    move-object/from16 v20, v1

    iget-object v0, v0, Li0/a;->u:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v24}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->b(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$FloatRef;FFLandroid/graphics/Rect;FLandroid/graphics/RectF;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Matrix;ILandroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method
