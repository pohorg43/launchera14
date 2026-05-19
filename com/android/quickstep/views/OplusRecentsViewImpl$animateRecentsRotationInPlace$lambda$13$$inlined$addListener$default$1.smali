.class public final Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusRecentsViewImpl;->animateRecentsRotationInPlace(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 OplusRecentsViewImpl.kt\ncom/android/quickstep/views/OplusRecentsViewImpl\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,127:1\n98#2:128\n720#3,15:129\n758#3,3:158\n715#3,4:162\n94#4,14:144\n97#5:161\n*S KotlinDebug\n*F\n+ 1 OplusRecentsViewImpl.kt\ncom/android/quickstep/views/OplusRecentsViewImpl\n*L\n734#1:144,14\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $newRotation$inlined:I

.field public final synthetic this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;ILcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 4

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->$newRotation$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    if-eqz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :cond_2e
    :goto_2e
    invoke-static {p1, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$setSkipUpdateCurrentPage$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->$newRotation$inlined:I

    iget-object v1, p1, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$setLayoutRotationResult(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)Z

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$setSkipUpdateCurrentPage$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    if-nez p1, :cond_56

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    :cond_56
    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$setMRotateAnimation$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/animation/AnimatorSet;)V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->$newRotation$inlined:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createRotateAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;ZI)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->$newRotation$inlined:I

    invoke-direct {v0, v1, p0, v1, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;ILcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

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

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of p1, p0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_17

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/RecentContainerView;->clearALLPopView(Z)V

    :cond_17
    return-void
.end method
