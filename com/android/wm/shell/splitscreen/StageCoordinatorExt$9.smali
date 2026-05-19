.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$exitSplitScreenWithSlideAnimAndShellTransition$9(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/window/WindowContainerTransaction;Ljava/lang/Boolean;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic val$failedCB:Ljava/lang/Runnable;

.field public final synthetic val$finishCB:Ljava/lang/Runnable;

.field public final synthetic val$rootBounds:Landroid/graphics/Rect;

.field public final synthetic val$slideAnimSnapshotWhenDismiss:Landroid/view/SurfaceControl;

.field public final synthetic val$startCB:Ljava/lang/Runnable;

.field public final synthetic val$toTopChildSurface:Landroid/view/SurfaceControl;

.field public final synthetic val$toTopSnapshotBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

.field public final synthetic val$toTopTaskFreezeBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .registers 10

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$startCB:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$finishCB:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$toTopChildSurface:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$toTopSnapshotBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$toTopTaskFreezeBounds:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$rootBounds:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$slideAnimSnapshotWhenDismiss:Landroid/view/SurfaceControl;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$failedCB:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    new-instance p2, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    invoke-static {}, Lcom/android/wm/shell/ShellAnimThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$startCB:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$failedCB:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 14

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz p2, :cond_8f

    array-length p3, p2

    if-nez p3, :cond_c

    goto/16 :goto_8f

    :cond_c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    array-length p4, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    const/4 v2, 0x1

    if-ge v1, p4, :cond_25

    aget-object v3, p2, v1

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v4, v2, :cond_22

    iget-object v2, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_25
    new-instance p2, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    new-instance p4, Lcom/android/wm/shell/splitscreen/SurfaceAnimatable;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$toTopChildSurface:Landroid/view/SurfaceControl;

    invoke-direct {p4, v1}, Lcom/android/wm/shell/splitscreen/SurfaceAnimatable;-><init>(Landroid/view/SurfaceControl;)V

    invoke-direct {p2, p4}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;-><init>(Lcom/android/wm/shell/splitscreen/animation/Animatable;)V

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$toTopSnapshotBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    new-instance v3, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$toTopTaskFreezeBounds:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$toTopTaskFreezeBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$rootBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v1, v5, v5, v0}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    new-instance v5, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$toTopTaskFreezeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$rootBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v0, v1, v1, v2}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9$1;

    invoke-direct {v7, p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;Ljava/util/ArrayList;)V

    move-object v0, p2

    move-object v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Point;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$SurfaceAnimationFinishedListener;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$slideAnimSnapshotWhenDismiss:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_71

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p2

    if-eqz p2, :cond_71

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$slideAnimSnapshotWhenDismiss:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$slideAnimSnapshotWhenDismiss:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_71
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9$2;

    invoke-direct {p2, p0, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9$2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->start()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$startCB:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_8f
    :goto_8f
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->isStarted()Z

    move-result p1

    if-nez p1, :cond_ad

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$startCB:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->val$finishCB:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_ad
    return-void
.end method
