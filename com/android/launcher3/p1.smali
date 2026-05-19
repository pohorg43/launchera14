.class public final synthetic Lcom/android/launcher3/p1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field public final synthetic b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic c:Landroid/graphics/Point;

.field public final synthetic d:Landroid/graphics/RectF;

.field public final synthetic e:Landroid/util/Pair;

.field public final synthetic f:I

.field public final synthetic g:Landroid/graphics/PointF;

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Landroid/graphics/Matrix;

.field public final synthetic k:J

.field public final synthetic l:Landroid/graphics/RectF;

.field public final synthetic m:F

.field public final synthetic n:Z

.field public final synthetic o:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic p:F

.field public final synthetic q:Ljava/util/function/Supplier;

.field public final synthetic r:Z

.field public final synthetic s:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;Landroid/util/Pair;ILandroid/graphics/PointF;FFLandroid/graphics/Matrix;JLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 24

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/p1;->a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/launcher3/p1;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/launcher3/p1;->c:Landroid/graphics/Point;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/launcher3/p1;->d:Landroid/graphics/RectF;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/launcher3/p1;->e:Landroid/util/Pair;

    move v1, p6

    iput v1, v0, Lcom/android/launcher3/p1;->f:I

    move-object v1, p7

    iput-object v1, v0, Lcom/android/launcher3/p1;->g:Landroid/graphics/PointF;

    move v1, p8

    iput v1, v0, Lcom/android/launcher3/p1;->h:F

    move v1, p9

    iput v1, v0, Lcom/android/launcher3/p1;->i:F

    move-object v1, p10

    iput-object v1, v0, Lcom/android/launcher3/p1;->j:Landroid/graphics/Matrix;

    move-wide v1, p11

    iput-wide v1, v0, Lcom/android/launcher3/p1;->k:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/launcher3/p1;->l:Landroid/graphics/RectF;

    move/from16 v1, p14

    iput v1, v0, Lcom/android/launcher3/p1;->m:F

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/launcher3/p1;->n:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/launcher3/p1;->o:Lcom/android/launcher3/views/FloatingIconView;

    move/from16 v1, p17

    iput v1, v0, Lcom/android/launcher3/p1;->p:F

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/launcher3/p1;->q:Ljava/util/function/Supplier;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/launcher3/p1;->r:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/launcher3/p1;->s:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move/from16 v23, p3

    iget-object v1, v0, Lcom/android/launcher3/p1;->a:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v2, v0, Lcom/android/launcher3/p1;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v3, v0, Lcom/android/launcher3/p1;->c:Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/launcher3/p1;->d:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/launcher3/p1;->e:Landroid/util/Pair;

    iget v6, v0, Lcom/android/launcher3/p1;->f:I

    iget-object v7, v0, Lcom/android/launcher3/p1;->g:Landroid/graphics/PointF;

    iget v8, v0, Lcom/android/launcher3/p1;->h:F

    iget v9, v0, Lcom/android/launcher3/p1;->i:F

    iget-object v10, v0, Lcom/android/launcher3/p1;->j:Landroid/graphics/Matrix;

    iget-wide v11, v0, Lcom/android/launcher3/p1;->k:J

    iget-object v13, v0, Lcom/android/launcher3/p1;->l:Landroid/graphics/RectF;

    iget v14, v0, Lcom/android/launcher3/p1;->m:F

    iget-boolean v15, v0, Lcom/android/launcher3/p1;->n:Z

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/launcher3/p1;->o:Lcom/android/launcher3/views/FloatingIconView;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/android/launcher3/p1;->p:F

    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/launcher3/p1;->q:Ljava/util/function/Supplier;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lcom/android/launcher3/p1;->r:Z

    move/from16 v19, v1

    iget-object v0, v0, Lcom/android/launcher3/p1;->s:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    move-object/from16 v20, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v23}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->k(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;Landroid/util/Pair;ILandroid/graphics/PointF;FFLandroid/graphics/Matrix;JLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method
