.class public final Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->createAnimToIsStashed(ZJJZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $finalStartDelay:J

.field public final synthetic $isStashed:Z

.field public final synthetic $isStashedForManualChanged:Z

.field public final synthetic $stashTag:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher3/taskbar/OplusTaskbarStashController;ZZJ)V
    .registers 7

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$stashTag:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    iput-boolean p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$isStashed:Z

    iput-boolean p4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$isStashedForManualChanged:Z

    iput-wide p5, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$finalStartDelay:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$isStashed:Z

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->onIsStashedChanged(Z)V

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$isStashedForManualChanged:Z

    if-eqz p1, :cond_2a

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$isStashed:Z

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    const/16 v0, 0x40

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isGesNavBarHiddenAndStashed()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateAndApplyState(IZ)V

    :cond_2a
    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$stashTag:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 7

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$stashTag:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$isStashed:Z

    iput-boolean v0, p1, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    const-string p1, "TaskbarStashController"

    const-string v0, "createAnimToIsStashed onAnimationStart"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->dismissStashedHandleGuidTip()V

    :cond_20
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$isStashedForManualChanged:Z

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->access$getMHandler$p(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->access$getMStashTask$p(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->access$getMHandler$p(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->access$getMStashTask$p(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)Ljava/lang/Runnable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$isStashed:Z

    if-nez v1, :cond_48

    const-wide/16 v1, 0x32

    iget-wide v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$finalStartDelay:J

    goto :goto_4c

    :cond_48
    const-wide/16 v1, 0x17c

    iget-wide v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$finalStartDelay:J

    :goto_4c
    add-long/2addr v3, v1

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_69

    :cond_51
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->access$getMHandler$p(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->access$getMStashTask$p(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->access$getMStashTask$p(Lcom/android/launcher3/taskbar/OplusTaskbarStashController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_69
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->resetBubbleTextViewState()V

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$isStashedForManualChanged:Z

    if-eqz p1, :cond_85

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->$isStashed:Z

    if-nez p1, :cond_85

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$createAnimToIsStashed$3;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    const/16 p1, 0x40

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isGesNavBarHiddenAndStashed()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateAndApplyState(IZ)V

    :cond_85
    return-void
.end method
