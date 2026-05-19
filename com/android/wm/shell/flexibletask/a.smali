.class public final synthetic Lcom/android/wm/shell/flexibletask/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

.field public final synthetic b:Landroid/view/SurfaceControl;

.field public final synthetic c:Landroid/animation/ValueAnimator;

.field public final synthetic d:Landroid/view/animation/Transformation;

.field public final synthetic e:Landroid/view/animation/Animation;

.field public final synthetic f:Landroid/graphics/Point;

.field public final synthetic g:F

.field public final synthetic h:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic i:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Animation;Landroid/graphics/Point;FLandroid/view/SurfaceControl$Transaction;[F)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/a;->a:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/a;->b:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/a;->c:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/wm/shell/flexibletask/a;->d:Landroid/view/animation/Transformation;

    iput-object p5, p0, Lcom/android/wm/shell/flexibletask/a;->e:Landroid/view/animation/Animation;

    iput-object p6, p0, Lcom/android/wm/shell/flexibletask/a;->f:Landroid/graphics/Point;

    iput p7, p0, Lcom/android/wm/shell/flexibletask/a;->g:F

    iput-object p8, p0, Lcom/android/wm/shell/flexibletask/a;->h:Landroid/view/SurfaceControl$Transaction;

    iput-object p9, p0, Lcom/android/wm/shell/flexibletask/a;->i:[F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/a;->a:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/a;->b:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/flexibletask/a;->c:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/wm/shell/flexibletask/a;->d:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/wm/shell/flexibletask/a;->e:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/wm/shell/flexibletask/a;->f:Landroid/graphics/Point;

    iget v6, p0, Lcom/android/wm/shell/flexibletask/a;->g:F

    iget-object v7, p0, Lcom/android/wm/shell/flexibletask/a;->h:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, p0, Lcom/android/wm/shell/flexibletask/a;->i:[F

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->m(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Animation;Landroid/graphics/Point;FLandroid/view/SurfaceControl$Transaction;[FLandroid/animation/ValueAnimator;)V

    return-void
.end method
