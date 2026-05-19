.class public final synthetic Lcom/android/wm/shell/flexibletask/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

.field public final synthetic b:Landroid/view/SurfaceControl;

.field public final synthetic c:Landroid/animation/ValueAnimator;

.field public final synthetic d:Landroid/view/animation/Transformation;

.field public final synthetic e:Landroid/view/animation/Transformation;

.field public final synthetic f:Landroid/view/animation/AnimationSet;

.field public final synthetic g:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic h:[F

.field public final synthetic i:Landroid/view/animation/AnimationSet;

.field public final synthetic j:Z

.field public final synthetic k:Landroid/view/SurfaceControl;

.field public final synthetic l:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Transformation;Landroid/view/animation/AnimationSet;Landroid/view/SurfaceControl$Transaction;[FLandroid/view/animation/AnimationSet;ZLandroid/view/SurfaceControl;[F)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/b;->a:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/b;->b:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/b;->c:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/wm/shell/flexibletask/b;->d:Landroid/view/animation/Transformation;

    iput-object p5, p0, Lcom/android/wm/shell/flexibletask/b;->e:Landroid/view/animation/Transformation;

    iput-object p6, p0, Lcom/android/wm/shell/flexibletask/b;->f:Landroid/view/animation/AnimationSet;

    iput-object p7, p0, Lcom/android/wm/shell/flexibletask/b;->g:Landroid/view/SurfaceControl$Transaction;

    iput-object p8, p0, Lcom/android/wm/shell/flexibletask/b;->h:[F

    iput-object p9, p0, Lcom/android/wm/shell/flexibletask/b;->i:Landroid/view/animation/AnimationSet;

    iput-boolean p10, p0, Lcom/android/wm/shell/flexibletask/b;->j:Z

    iput-object p11, p0, Lcom/android/wm/shell/flexibletask/b;->k:Landroid/view/SurfaceControl;

    iput-object p12, p0, Lcom/android/wm/shell/flexibletask/b;->l:[F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 15

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/b;->a:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/b;->b:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/flexibletask/b;->c:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/wm/shell/flexibletask/b;->d:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/wm/shell/flexibletask/b;->e:Landroid/view/animation/Transformation;

    iget-object v5, p0, Lcom/android/wm/shell/flexibletask/b;->f:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/android/wm/shell/flexibletask/b;->g:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/android/wm/shell/flexibletask/b;->h:[F

    iget-object v8, p0, Lcom/android/wm/shell/flexibletask/b;->i:Landroid/view/animation/AnimationSet;

    iget-boolean v9, p0, Lcom/android/wm/shell/flexibletask/b;->j:Z

    iget-object v10, p0, Lcom/android/wm/shell/flexibletask/b;->k:Landroid/view/SurfaceControl;

    iget-object v11, p0, Lcom/android/wm/shell/flexibletask/b;->l:[F

    move-object v12, p1

    invoke-static/range {v0 .. v12}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->c(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Transformation;Landroid/view/animation/AnimationSet;Landroid/view/SurfaceControl$Transaction;[FLandroid/view/animation/AnimationSet;ZLandroid/view/SurfaceControl;[FLandroid/animation/ValueAnimator;)V

    return-void
.end method
