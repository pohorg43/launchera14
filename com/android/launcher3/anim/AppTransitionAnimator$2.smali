.class public final Lcom/android/launcher3/anim/AppTransitionAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/AppTransitionAnimator;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;ZFLcom/android/launcher3/Launcher;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/AppTransitionAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$2;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$2;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$setFirstUpdate$p(Lcom/android/launcher3/anim/AppTransitionAnimator;Z)V

    iget-object p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$2;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-static {p1}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getMAppTransitionParam$p(Lcom/android/launcher3/anim/AppTransitionAnimator;)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;->setHasInterrupted(Z)V

    :goto_13
    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$2;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-static {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getMAppTransitionParam$p(Lcom/android/launcher3/anim/AppTransitionAnimator;)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object p0

    if-nez p0, :cond_1c

    goto :goto_1f

    :cond_1c
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;->setNeedInterceptIconSurface(Z)V

    :goto_1f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$2;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-static {p1}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getMAppTransitionParam$p(Lcom/android/launcher3/anim/AppTransitionAnimator;)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;->setHasInterrupted(Z)V

    :goto_d
    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator$2;->this$0:Lcom/android/launcher3/anim/AppTransitionAnimator;

    invoke-static {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getMAppTransitionParam$p(Lcom/android/launcher3/anim/AppTransitionAnimator;)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object p0

    if-nez p0, :cond_16

    goto :goto_19

    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;->setNeedInterceptIconSurface(Z)V

    :goto_19
    return-void
.end method
