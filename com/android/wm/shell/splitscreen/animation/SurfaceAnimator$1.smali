.class Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Point;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$SurfaceAnimationFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

.field public final synthetic val$listener:Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$SurfaceAnimationFinishedListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$SurfaceAnimationFinishedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$1;->this$0:Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$1;->val$listener:Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$SurfaceAnimationFinishedListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$1;->val$listener:Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$SurfaceAnimationFinishedListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$SurfaceAnimationFinishedListener;->onAnimationFinished()V

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$1;->this$0:Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->access$000(Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;)V

    return-void
.end method
