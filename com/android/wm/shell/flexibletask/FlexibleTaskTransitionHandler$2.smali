.class Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->startFlexibleTaskMaximizedAnimationSec(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

.field public final synthetic val$change:Landroid/window/TransitionInfo$Change;

.field public final synthetic val$endBounds:Landroid/graphics/Rect;

.field public final synthetic val$scale:F

.field public final synthetic val$startBounds:Landroid/graphics/Rect;

.field public final synthetic val$startXScale:F

.field public final synthetic val$startYScale:F

.field public final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;F)V
    .registers 9

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->this$0:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iput p2, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startXScale:F

    iput p3, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startYScale:F

    iput-object p4, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startBounds:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$endBounds:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p7, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$change:Landroid/window/TransitionInfo$Change;

    iput p8, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 21
    .param p1  # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startXScale:F

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v3, v2, v1, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v2

    iget v4, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startYScale:F

    invoke-static {v3, v4, v1, v4}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v10

    iget-object v4, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$endBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v5

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    add-int/2addr v5, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    add-int/2addr v7, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$endBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v8, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    add-int v11, v4, v6

    iget-object v4, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$endBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    add-int v12, v4, v6

    sub-float/2addr v3, v1

    iget-object v1, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$change:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    int-to-float v5, v5

    int-to-float v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v1, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$change:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v2

    move v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v13

    iget-object v1, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$change:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v14

    iget v1, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$scale:F

    iget v4, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startXScale:F

    div-float v15, v1, v4

    iget v4, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$startYScale:F

    div-float v18, v1, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$change:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;->val$change:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    int-to-float v3, v11

    div-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v3, v12

    div-float/2addr v3, v10

    float-to-int v3, v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
