.class final Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->getOpeningWindowSpringAnim(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZILcom/android/systemui/shared/system/AppTransitionParam;)Lcom/android/launcher3/anim/AppTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $iconId:I

.field public final synthetic $iconView:Landroid/view/View;

.field public final synthetic $isMultiInterruptOpen:Z

.field public final synthetic this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;ZLandroid/view/View;)V
    .registers 6

    iput p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$iconId:I

    iput-object p2, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    iput-boolean p4, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$isMultiInterruptOpen:Z

    iput-object p5, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$iconView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->invoke$lambda$0()V

    return-void
.end method

.method private static final invoke$lambda$0()V
    .registers 2

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 6

    const-string/jumbo v0, "open has Interrupt: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v2}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$isIconSurfaceForOpen$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$isMultiInterruptOpen:Z

    const-string v2, "OplusLauncherAppTransitionHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/QuickstepTransitionManager;->setIsAppCloseAsyncAniRunning(Z)V

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$isIconSurfaceForOpen$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$isMultiInterruptOpen:Z

    if-nez v0, :cond_77

    const-string/jumbo v0, "open anim end, currentFloatingIconSurface set to null"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v2, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$iconView:Landroid/view/View;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->$iconId:I

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->endWindowAnim(Landroid/view/View;ZZI)V

    :cond_70
    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->setIconSurfaceHolder(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    goto :goto_a9

    :cond_77
    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMainThreadHandler$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getOpenEndTimeOutRunnable$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMainThreadHandler$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getOpenEndTimeOutRunnable$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_98
    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMainThreadHandler$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getOpenEndTimeOutRunnable$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_a9
    sget-object p0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/launcher3/anim/p;->a:Lcom/android/launcher3/anim/p;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
