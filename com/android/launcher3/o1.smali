.class public final synthetic Lcom/android/launcher3/o1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field public final synthetic b:Landroid/graphics/Matrix;

.field public final synthetic c:Landroid/graphics/RectF;

.field public final synthetic d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic e:Landroid/graphics/Point;

.field public final synthetic f:Landroid/util/Pair;

.field public final synthetic g:Landroid/graphics/RectF;

.field public final synthetic h:I

.field public final synthetic i:Landroid/graphics/RectF;

.field public final synthetic j:Landroid/graphics/PointF;

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:Landroid/graphics/Matrix;

.field public final synthetic n:Z

.field public final synthetic o:I

.field public final synthetic p:Landroid/graphics/RectF;

.field public final synthetic q:F

.field public final synthetic r:Z

.field public final synthetic s:Z

.field public final synthetic t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic v:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic w:F

.field public final synthetic x:Ljava/util/function/Supplier;

.field public final synthetic y:Z

.field public final synthetic z:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/util/Pair;Landroid/graphics/RectF;ILandroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/graphics/Matrix;ZILandroid/graphics/RectF;FZZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 29

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/o1;->a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/launcher3/o1;->b:Landroid/graphics/Matrix;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/launcher3/o1;->c:Landroid/graphics/RectF;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/launcher3/o1;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/launcher3/o1;->e:Landroid/graphics/Point;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/launcher3/o1;->f:Landroid/util/Pair;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/launcher3/o1;->g:Landroid/graphics/RectF;

    move v1, p8

    iput v1, v0, Lcom/android/launcher3/o1;->h:I

    move-object v1, p9

    iput-object v1, v0, Lcom/android/launcher3/o1;->i:Landroid/graphics/RectF;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/launcher3/o1;->j:Landroid/graphics/PointF;

    move v1, p11

    iput v1, v0, Lcom/android/launcher3/o1;->k:F

    move v1, p12

    iput v1, v0, Lcom/android/launcher3/o1;->l:F

    move-object v1, p13

    iput-object v1, v0, Lcom/android/launcher3/o1;->m:Landroid/graphics/Matrix;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/launcher3/o1;->n:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/android/launcher3/o1;->o:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/launcher3/o1;->p:Landroid/graphics/RectF;

    move/from16 v1, p17

    iput v1, v0, Lcom/android/launcher3/o1;->q:F

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/launcher3/o1;->r:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/launcher3/o1;->s:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/launcher3/o1;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/launcher3/o1;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/launcher3/o1;->v:Lcom/android/launcher3/views/FloatingIconView;

    move/from16 v1, p23

    iput v1, v0, Lcom/android/launcher3/o1;->w:F

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/launcher3/o1;->x:Ljava/util/function/Supplier;

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/android/launcher3/o1;->y:Z

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/launcher3/o1;->z:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v27, p1

    move-object/from16 v28, p2

    move/from16 v29, p3

    iget-object v1, v0, Lcom/android/launcher3/o1;->a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v2, v0, Lcom/android/launcher3/o1;->b:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/android/launcher3/o1;->c:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/android/launcher3/o1;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v5, v0, Lcom/android/launcher3/o1;->e:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/launcher3/o1;->f:Landroid/util/Pair;

    iget-object v7, v0, Lcom/android/launcher3/o1;->g:Landroid/graphics/RectF;

    iget v8, v0, Lcom/android/launcher3/o1;->h:I

    iget-object v9, v0, Lcom/android/launcher3/o1;->i:Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/android/launcher3/o1;->j:Landroid/graphics/PointF;

    iget v11, v0, Lcom/android/launcher3/o1;->k:F

    iget v12, v0, Lcom/android/launcher3/o1;->l:F

    iget-object v13, v0, Lcom/android/launcher3/o1;->m:Landroid/graphics/Matrix;

    iget-boolean v14, v0, Lcom/android/launcher3/o1;->n:Z

    iget v15, v0, Lcom/android/launcher3/o1;->o:I

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/launcher3/o1;->p:Landroid/graphics/RectF;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/android/launcher3/o1;->q:F

    move/from16 v17, v1

    iget-boolean v1, v0, Lcom/android/launcher3/o1;->r:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Lcom/android/launcher3/o1;->s:Z

    move/from16 v19, v1

    iget-object v1, v0, Lcom/android/launcher3/o1;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/launcher3/o1;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/launcher3/o1;->v:Lcom/android/launcher3/views/FloatingIconView;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/android/launcher3/o1;->w:F

    move/from16 v23, v1

    iget-object v1, v0, Lcom/android/launcher3/o1;->x:Ljava/util/function/Supplier;

    move-object/from16 v24, v1

    iget-boolean v1, v0, Lcom/android/launcher3/o1;->y:Z

    move/from16 v25, v1

    iget-object v0, v0, Lcom/android/launcher3/o1;->z:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    move-object/from16 v26, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v29}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->j(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/util/Pair;Landroid/graphics/RectF;ILandroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/graphics/Matrix;ZILandroid/graphics/RectF;FZZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method
