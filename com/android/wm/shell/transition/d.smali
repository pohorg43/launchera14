.class public final synthetic Lcom/android/wm/shell/transition/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic c:Landroid/view/SurfaceControl;

.field public final synthetic d:Landroid/view/animation/Animation;

.field public final synthetic e:Landroid/view/animation/Transformation;

.field public final synthetic f:[F

.field public final synthetic g:Landroid/graphics/Point;

.field public final synthetic h:F

.field public final synthetic i:Landroid/graphics/Rect;

.field public final synthetic j:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/d;->a:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/transition/d;->b:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/transition/d;->c:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/transition/d;->d:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/android/wm/shell/transition/d;->e:Landroid/view/animation/Transformation;

    iput-object p6, p0, Lcom/android/wm/shell/transition/d;->f:[F

    iput-object p7, p0, Lcom/android/wm/shell/transition/d;->g:Landroid/graphics/Point;

    iput p8, p0, Lcom/android/wm/shell/transition/d;->h:F

    iput-object p9, p0, Lcom/android/wm/shell/transition/d;->i:Landroid/graphics/Rect;

    iput-object p10, p0, Lcom/android/wm/shell/transition/d;->j:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/transition/d;->a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/transition/d;->b:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/transition/d;->c:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/transition/d;->d:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/wm/shell/transition/d;->e:Landroid/view/animation/Transformation;

    iget-object v5, p0, Lcom/android/wm/shell/transition/d;->f:[F

    iget-object v6, p0, Lcom/android/wm/shell/transition/d;->g:Landroid/graphics/Point;

    iget v7, p0, Lcom/android/wm/shell/transition/d;->h:F

    iget-object v8, p0, Lcom/android/wm/shell/transition/d;->i:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/wm/shell/transition/d;->j:Landroid/os/Bundle;

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->a(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;Landroid/animation/ValueAnimator;)V

    return-void
.end method
