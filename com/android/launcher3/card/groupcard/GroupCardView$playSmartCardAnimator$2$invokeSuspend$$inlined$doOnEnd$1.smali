.class public final Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 GroupCardView.kt\ncom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n355#3,13:129\n97#4:142\n96#5:143\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $newView$inlined:Landroid/view/View;

.field public final synthetic $oldView$inlined:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iput-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->$oldView$inlined:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->$newView$inlined:Landroid/view/View;

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

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getSmartView$p(Lcom/android/launcher3/card/groupcard/GroupCardView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->$oldView$inlined:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "GroupCardView"

    if-nez p1, :cond_47

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->$oldView$inlined:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playSmartCardAnimator doOnEnd: removeView：oldView"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->$oldView$inlined:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->$oldView$inlined:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getDefaultCard$p$s-1451573932(Lcom/android/launcher3/card/groupcard/GroupCardView;)Lcom/android/launcher3/card/DefaultCardView;

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-static {p1, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$setDefaultCard$p$s-1451573932(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/android/launcher3/card/DefaultCardView;)V

    :cond_47
    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    new-instance p1, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$4$1;

    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-direct {p1, v2}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$4$1;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/oplus/quickstep/utils/ChoreographerUtil;->postFrameCallbackDelay(Ljava/lang/Runnable;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playSmartCardAnimator doOnEnd: newView："

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->$newView$inlined:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newViewAlpha:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;->$newView$inlined:Landroid/view/View;

    if-eqz p0, :cond_79

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
