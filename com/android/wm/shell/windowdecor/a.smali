.class public final synthetic Lcom/android/wm/shell/windowdecor/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Landroid/view/MotionEvent;

.field public final synthetic d:F

.field public final synthetic e:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(FFLandroid/view/MotionEvent;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/a;->a:F

    iput p2, p0, Lcom/android/wm/shell/windowdecor/a;->b:F

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/a;->c:Landroid/view/MotionEvent;

    iput p4, p0, Lcom/android/wm/shell/windowdecor/a;->d:F

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/a;->e:Landroid/view/SurfaceControl$Transaction;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/a;->f:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    iget v0, p0, Lcom/android/wm/shell/windowdecor/a;->a:F

    iget v1, p0, Lcom/android/wm/shell/windowdecor/a;->b:F

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/a;->c:Landroid/view/MotionEvent;

    iget v3, p0, Lcom/android/wm/shell/windowdecor/a;->d:F

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/a;->e:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/a;->f:Landroid/view/SurfaceControl;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->f(FFLandroid/view/MotionEvent;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void
.end method
