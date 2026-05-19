.class public final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->launchTaskByView(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 ReleaseSceneAnimLaunchTask.kt\ncom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,127:1\n98#2:128\n157#3,15:129\n153#3,3:145\n97#4:144\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $recentsView$inlined:Lcom/android/quickstep/views/OplusRecentsViewImpl;

.field public final synthetic $recentsView$inlined$1:Lcom/android/quickstep/views/OplusRecentsViewImpl;

.field public final synthetic $taskView$inlined:Lcom/android/quickstep/views/OplusTaskViewImpl;

.field public final synthetic this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->$taskView$inlined:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iput-object p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->$recentsView$inlined:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object p4, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->$recentsView$inlined$1:Lcom/android/quickstep/views/OplusRecentsViewImpl;

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
    .registers 6

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->setReleasing(Z)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleTaskId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result p1

    const-string v1, "startLaunchAnim(), onEnd, result="

    const-string v3, "RFT_ReleaseScene_AnimLaunchTask"

    invoke-static {v1, p1, v3}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->$taskView$inlined:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_3a

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_3b

    :cond_3a
    const/4 p1, -0x1

    :goto_3b
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->clearTaskRecorderIfNeeded(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->$recentsView$inlined:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->$recentsView$inlined:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setWaitTaskAnimationStart(Z)V

    goto :goto_58

    :cond_51
    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->$taskView$inlined:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const-string v1, "startLaunchAnim"

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    :cond_58
    :goto_58
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, v0, v0, p1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

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

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;->$recentsView$inlined$1:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const/4 p1, 0x0

    const-string v0, "RFT_ReleaseScene_AnimLaunchTask-launchTaskByView"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;)V

    return-void
.end method
