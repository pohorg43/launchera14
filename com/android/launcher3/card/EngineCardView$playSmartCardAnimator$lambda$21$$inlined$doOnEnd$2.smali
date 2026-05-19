.class public final Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 EngineCardView.kt\ncom/android/launcher3/card/EngineCardView\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n357#3,14:129\n97#4:143\n96#5:144\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $handledOldView$inlined:Landroid/view/View;

.field public final synthetic $newView$inlined:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher3/card/EngineCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iput-object p2, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->$handledOldView$inlined:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->$newView$inlined:Landroid/view/View;

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
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-static {p1}, Lcom/android/launcher3/card/EngineCardView;->access$getSmartView$p(Lcom/android/launcher3/card/EngineCardView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->$handledOldView$inlined:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->$handledOldView$inlined:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1a
    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iget-object v0, p1, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    if-eqz v0, :cond_28

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    :cond_28
    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/card/EngineCardView;->access$setSmartCardAnimEnd$p(Lcom/android/launcher3/card/EngineCardView;Z)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    new-instance p1, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$3$5$1;

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-direct {p1, v0}, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$3$5$1;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/oplus/quickstep/utils/ChoreographerUtil;->postFrameCallbackDelay(Ljava/lang/Runnable;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onAnimationEnd: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;->$newView$inlined:Landroid/view/View;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Card"

    const-string v0, "LauncherCardView-Engine"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
