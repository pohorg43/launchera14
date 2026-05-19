.class public final Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$itemDestroyAnimation$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->itemDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 AbstractToggleBarApdater.kt\ncom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n78#3,3:129\n97#4:132\n96#5:133\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $completeRunnable$inlined:Ljava/lang/Runnable;

.field public final synthetic $removeView$inlined:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$itemDestroyAnimation$$inlined$doOnEnd$1;->$completeRunnable$inlined:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$itemDestroyAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;

    iput-object p3, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$itemDestroyAnimation$$inlined$doOnEnd$1;->$removeView$inlined:Landroid/view/View;

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

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$itemDestroyAnimation$$inlined$doOnEnd$1;->$completeRunnable$inlined:Ljava/lang/Runnable;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_c
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$itemDestroyAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$itemDestroyAnimation$$inlined$doOnEnd$1;->$removeView$inlined:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->access$removeViewFromParent(Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;Landroid/view/View;)V

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
