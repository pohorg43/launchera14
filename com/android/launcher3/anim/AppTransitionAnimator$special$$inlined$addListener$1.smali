.class public final Lcom/android/launcher3/anim/AppTransitionAnimator$special$$inlined$addListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/AppTransitionAnimator;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;ZFLcom/android/launcher3/Launcher;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 AppTransitionAnimator.kt\ncom/android/launcher3/anim/AppTransitionAnimator\n*L\n1#1,127:1\n258#2,5:128\n255#2,2:133\n252#2,2:135\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/AppTransitionAnimator;Lcom/android/launcher3/anim/AppTransitionAnimator;Lcom/android/launcher3/anim/AppTransitionAnimator;Lcom/android/launcher3/anim/AppTransitionAnimator;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$special$$inlined$addListener$1;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$special$$inlined$addListener$1;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-static {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getMListeners(Lcom/android/launcher3/anim/AppTransitionAnimator;)Lcom/android/launcher3/anim/TransitionAnimatorListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$special$$inlined$addListener$1;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-static {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getMListeners(Lcom/android/launcher3/anim/AppTransitionAnimator;)Lcom/android/launcher3/anim/TransitionAnimatorListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$special$$inlined$addListener$1;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-static {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getMListeners(Lcom/android/launcher3/anim/AppTransitionAnimator;)Lcom/android/launcher3/anim/TransitionAnimatorListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$special$$inlined$addListener$1;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-static {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getMListeners(Lcom/android/launcher3/anim/AppTransitionAnimator;)Lcom/android/launcher3/anim/TransitionAnimatorListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
