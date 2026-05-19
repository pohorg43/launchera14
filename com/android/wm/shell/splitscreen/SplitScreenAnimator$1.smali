.class Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->startSwapAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

.field public final synthetic val$l:Landroid/animation/AnimatorListenerAdapter;

.field public final synthetic val$sideSurface:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Landroid/view/SurfaceControl;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->val$sideSurface:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->val$l:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->val$sideSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->val$sideSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->val$l:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_1e
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->access$002(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
