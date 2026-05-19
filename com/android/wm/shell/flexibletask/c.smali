.class public final synthetic Lcom/android/wm/shell/flexibletask/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

.field public final synthetic b:Landroid/view/SurfaceControl;

.field public final synthetic c:Landroid/view/SurfaceControl;

.field public final synthetic d:Landroid/animation/ValueAnimator;

.field public final synthetic e:Landroid/graphics/Rect;

.field public final synthetic f:Landroid/graphics/Rect;

.field public final synthetic g:Z

.field public final synthetic h:F

.field public final synthetic i:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic j:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFLandroid/view/SurfaceControl$Transaction;F)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/c;->a:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/c;->b:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/c;->c:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/flexibletask/c;->d:Landroid/animation/ValueAnimator;

    iput-object p5, p0, Lcom/android/wm/shell/flexibletask/c;->e:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/wm/shell/flexibletask/c;->f:Landroid/graphics/Rect;

    iput-boolean p7, p0, Lcom/android/wm/shell/flexibletask/c;->g:Z

    iput p8, p0, Lcom/android/wm/shell/flexibletask/c;->h:F

    iput-object p9, p0, Lcom/android/wm/shell/flexibletask/c;->i:Landroid/view/SurfaceControl$Transaction;

    iput p10, p0, Lcom/android/wm/shell/flexibletask/c;->j:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/c;->a:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/c;->b:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/flexibletask/c;->c:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/flexibletask/c;->d:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/wm/shell/flexibletask/c;->e:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/flexibletask/c;->f:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/android/wm/shell/flexibletask/c;->g:Z

    iget v7, p0, Lcom/android/wm/shell/flexibletask/c;->h:F

    iget-object v8, p0, Lcom/android/wm/shell/flexibletask/c;->i:Landroid/view/SurfaceControl$Transaction;

    iget v9, p0, Lcom/android/wm/shell/flexibletask/c;->j:F

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->l(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFLandroid/view/SurfaceControl$Transaction;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
