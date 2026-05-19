.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic val$finishCB:Ljava/lang/Runnable;

.field public final synthetic val$screenshot:Landroid/view/SurfaceControl;

.field public final synthetic val$sidePosition:I

.field public final synthetic val$sideTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic val$sideTaskScreenshotBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 7

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$screenshot:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$finishCB:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$sideTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$sidePosition:I

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$sideTaskScreenshotBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    new-instance p2, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    invoke-static {}, Lcom/android/wm/shell/ShellAnimThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->lambda$onAnimationCancelled$0()V

    return-void
.end method

.method private synthetic lambda$onAnimationCancelled$0()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueApplyDividerVisibility(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/k1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/k1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$screenshot:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$screenshot:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$screenshot:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_27
    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 13

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz p2, :cond_11b

    array-length p3, p2

    if-nez p3, :cond_c

    goto/16 :goto_11b

    :cond_c
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object p3

    const/high16 p4, 0x3f800000  # 1.0f

    invoke-virtual {p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object p3

    const v0, 0x7fffffff

    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    array-length p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_3b
    const/4 v2, 0x1

    if-ge v1, p3, :cond_8d

    aget-object v3, p2, v1

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v4, v2, :cond_45

    goto :goto_8a

    :cond_45
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v4, v3, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "startIntentAndTaskWithSlideAnim, taskId="

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", stage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8a

    iget-object v4, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v5, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_8a
    :goto_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_8d
    new-instance p2, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    new-instance p3, Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$700(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object p4

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v1

    invoke-direct {p3, p4, v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZLcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-direct {p2, p3}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;-><init>(Lcom/android/wm/shell/splitscreen/animation/Animatable;)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$sideTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$sidePosition:I

    if-nez p4, :cond_c2

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1600(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Ljava/util/function/Supplier;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p4

    goto :goto_d2

    :cond_c2
    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1600(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Ljava/util/function/Supplier;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p4

    :goto_d2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$sideTaskScreenshotBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    new-instance v4, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    invoke-direct {v4, p3, p4, v1, v0}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    new-instance v5, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    invoke-direct {v5, p3, p4, v1, v2}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    move-object v0, p2

    move-object v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$screenshot:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_103

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p2

    if-eqz p2, :cond_103

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$screenshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$screenshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_103
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->deferUpdateSurfaceBounds()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8$1;

    invoke-direct {p2, p0, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->start()V

    return-void

    :cond_11b
    :goto_11b
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$screenshot:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_12f

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p2

    if-eqz p2, :cond_12f

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$screenshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$screenshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_12f
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->isStarted()Z

    move-result p1

    if-nez p1, :cond_145

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$finishCB:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_145
    return-void
.end method
