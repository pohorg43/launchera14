.class public final Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->createTaskLaunchAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 OplusTaskAnimationBuilderMutliRowImpl.kt\ncom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl\n*L\n1#1,127:1\n98#2:128\n304#3,6:129\n300#3,4:135\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $pa$inlined:Lcom/android/launcher3/anim/PendingAnimation;

.field public final synthetic $tv$inlined:Lcom/android/quickstep/views/TaskView;

.field public final synthetic $tv$inlined$1:Lcom/android/quickstep/views/TaskView;

.field public final synthetic $tv$inlined$2:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$tv$inlined:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$tv$inlined$1:Lcom/android/quickstep/views/TaskView;

    iput-object p3, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$tv$inlined$2:Lcom/android/quickstep/views/TaskView;

    iput-object p4, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$pa$inlined:Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$tv$inlined$1:Lcom/android/quickstep/views/TaskView;

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setGridTaskDragAnimatorRunning(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$tv$inlined$1:Lcom/android/quickstep/views/TaskView;

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setScaleAnimatorForGridRecentView(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$tv$inlined:Lcom/android/quickstep/views/TaskView;

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setGridTaskDragAnimatorRunning(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$tv$inlined:Lcom/android/quickstep/views/TaskView;

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setScaleAnimatorForGridRecentView(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$tv$inlined$2:Lcom/android/quickstep/views/TaskView;

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->cancelAllAnimation()V

    iget-object p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$tv$inlined$2:Lcom/android/quickstep/views/TaskView;

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setGridTaskDragAnimatorRunning(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$tv$inlined$2:Lcom/android/quickstep/views/TaskView;

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    iget-object p0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;->$pa$inlined:Lcom/android/launcher3/anim/PendingAnimation;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setScaleAnimatorForGridRecentView(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
