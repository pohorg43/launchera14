.class public final synthetic Lcom/oplus/quickstep/gesture/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;


# instance fields
.field public final synthetic a:Landroid/graphics/Matrix;

.field public final synthetic b:Landroid/graphics/RectF;

.field public final synthetic c:F

.field public final synthetic d:Landroid/view/animation/AccelerateInterpolator;

.field public final synthetic e:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

.field public final synthetic f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic g:Landroid/util/Pair;

.field public final synthetic h:Landroid/graphics/Rect;

.field public final synthetic i:Landroid/graphics/RectF;

.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic l:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:Landroid/graphics/Matrix;

.field public final synthetic p:Lcom/android/quickstep/util/TransformParams;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Matrix;Landroid/graphics/RectF;FLandroid/view/animation/AccelerateInterpolator;Lcom/oplus/quickstep/utils/CreateTransactionHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/util/Pair;Landroid/graphics/Rect;Landroid/graphics/RectF;ILkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFLandroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;)V
    .registers 19

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->a:Landroid/graphics/Matrix;

    move-object v1, p2

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->b:Landroid/graphics/RectF;

    move v1, p3

    iput v1, v0, Lcom/oplus/quickstep/gesture/o;->c:F

    move-object v1, p4

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->d:Landroid/view/animation/AccelerateInterpolator;

    move-object v1, p5

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->e:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    move-object v1, p6

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p7

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->g:Landroid/util/Pair;

    move-object v1, p8

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->h:Landroid/graphics/Rect;

    move-object v1, p9

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->i:Landroid/graphics/RectF;

    move v1, p10

    iput v1, v0, Lcom/oplus/quickstep/gesture/o;->j:I

    move-object v1, p11

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->k:Lkotlin/jvm/internal/Ref$FloatRef;

    move-object v1, p12

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->l:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move v1, p13

    iput v1, v0, Lcom/oplus/quickstep/gesture/o;->m:F

    move/from16 v1, p14

    iput v1, v0, Lcom/oplus/quickstep/gesture/o;->n:F

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->o:Landroid/graphics/Matrix;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/o;->p:Lcom/android/quickstep/util/TransformParams;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v19, p3

    iget-object v1, v0, Lcom/oplus/quickstep/gesture/o;->a:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/o;->b:Landroid/graphics/RectF;

    iget v3, v0, Lcom/oplus/quickstep/gesture/o;->c:F

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/o;->d:Landroid/view/animation/AccelerateInterpolator;

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/o;->e:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/o;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v7, v0, Lcom/oplus/quickstep/gesture/o;->g:Landroid/util/Pair;

    iget-object v8, v0, Lcom/oplus/quickstep/gesture/o;->h:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/oplus/quickstep/gesture/o;->i:Landroid/graphics/RectF;

    iget v10, v0, Lcom/oplus/quickstep/gesture/o;->j:I

    iget-object v11, v0, Lcom/oplus/quickstep/gesture/o;->k:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v12, v0, Lcom/oplus/quickstep/gesture/o;->l:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v13, v0, Lcom/oplus/quickstep/gesture/o;->m:F

    iget v14, v0, Lcom/oplus/quickstep/gesture/o;->n:F

    iget-object v15, v0, Lcom/oplus/quickstep/gesture/o;->o:Landroid/graphics/Matrix;

    iget-object v0, v0, Lcom/oplus/quickstep/gesture/o;->p:Lcom/android/quickstep/util/TransformParams;

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v19}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->c1(Landroid/graphics/Matrix;Landroid/graphics/RectF;FLandroid/view/animation/AccelerateInterpolator;Lcom/oplus/quickstep/utils/CreateTransactionHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/util/Pair;Landroid/graphics/Rect;Landroid/graphics/RectF;ILkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFLandroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method
