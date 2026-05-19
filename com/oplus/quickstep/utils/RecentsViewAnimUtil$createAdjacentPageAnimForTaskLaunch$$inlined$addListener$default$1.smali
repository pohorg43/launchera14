.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 RecentsViewAnimUtil.kt\ncom/oplus/quickstep/utils/RecentsViewAnimUtil\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,127:1\n98#2:128\n773#3,5:129\n780#3,9:135\n97#4:134\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $currentTaskView$inlined:Lcom/android/quickstep/views/TaskView;

.field public final synthetic $dockViewTaskLaunchAlphaProperty$inlined:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field public final synthetic $rv$inlined:Lcom/android/quickstep/views/OplusRecentsViewImpl;

.field public final synthetic $tv$inlined:Lcom/android/quickstep/views/TaskView;

.field public final synthetic $tv$inlined$1:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;)V
    .registers 6

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$currentTaskView$inlined:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$tv$inlined:Lcom/android/quickstep/views/TaskView;

    iput-object p3, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$rv$inlined:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object p4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$tv$inlined$1:Lcom/android/quickstep/views/TaskView;

    iput-object p5, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$dockViewTaskLaunchAlphaProperty$inlined:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

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
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$currentTaskView$inlined:Lcom/android/quickstep/views/TaskView;

    if-eqz p1, :cond_e

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_e
    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$currentTaskView$inlined:Lcom/android/quickstep/views/TaskView;

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    :cond_16
    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$tv$inlined:Lcom/android/quickstep/views/TaskView;

    instance-of v0, p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-nez p1, :cond_23

    goto :goto_27

    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->setInAdjacentPageAnimation(Z)V

    :goto_27
    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$rv$inlined:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->postRemoveAllViewTask(J)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$tv$inlined$1:Lcom/android/quickstep/views/TaskView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$tv$inlined$1:Lcom/android/quickstep/views/TaskView;

    instance-of v1, p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v1, :cond_14

    check-cast p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    if-nez p1, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->setInAdjacentPageAnimation(Z)V

    :goto_1b
    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;->$dockViewTaskLaunchAlphaProperty$inlined:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    if-eqz p0, :cond_23

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_23
    return-void
.end method
