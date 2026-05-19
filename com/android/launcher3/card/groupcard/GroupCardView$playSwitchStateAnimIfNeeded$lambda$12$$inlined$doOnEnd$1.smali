.class public final Lcom/android/launcher3/card/groupcard/GroupCardView$playSwitchStateAnimIfNeeded$lambda$12$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/groupcard/GroupCardView;->playSwitchStateAnimIfNeeded(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 GroupCardView.kt\ncom/android/launcher3/card/groupcard/GroupCardView\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n435#3,7:129\n97#4:136\n96#5:137\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSwitchStateAnimIfNeeded$lambda$12$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

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

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSwitchStateAnimIfNeeded$lambda$12$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_23

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSwitchStateAnimIfNeeded$lambda$12$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getMSwitchStateDrawParam$p$s-1451573932(Lcom/android/launcher3/card/groupcard/GroupCardView;)Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSwitchStateAnimIfNeeded$lambda$12$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_23
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
