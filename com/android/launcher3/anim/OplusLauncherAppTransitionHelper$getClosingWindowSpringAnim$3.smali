.class final Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->getClosingWindowSpringAnim([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;Lcom/android/systemui/shared/system/AppTransitionParam;)Lcom/android/launcher3/anim/AppTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic $hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $iconId:I

.field public final synthetic $iconView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V
    .registers 6

    iput p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->$iconId:I

    iput-object p2, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    iput-object p4, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    iput-object p5, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->$iconView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->invoke(Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Z)V
    .registers 5

    const-string v0, "close has Interrupt: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->$iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$isIconSurfaceForOpen$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canceled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherAppTransitionHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    instance-of v2, v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v2, :cond_45

    check-cast v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetIconToVisible()V

    :cond_45
    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->setIsAppCloseAsyncAniRunning(Z)V

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_6a

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {p1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$isIconSurfaceForOpen$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_9d

    :cond_6a
    iget-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {p1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMainThreadHandler$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getCloseEndTimeOurRunnable$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_8b

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {p1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMainThreadHandler$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getCloseEndTimeOurRunnable$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8b
    iget-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {p1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMainThreadHandler$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getCloseEndTimeOurRunnable$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b7

    :cond_9d
    :goto_9d
    const-string p1, "close anim end, currentFloatingIconSurface set to null"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_b1

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->$iconView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->$iconId:I

    invoke-virtual {p1, v0, v2, v2, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->endWindowAnim(Landroid/view/View;ZZI)V

    :cond_b1
    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->setIconSurfaceHolder(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    :goto_b7
    return-void
.end method
