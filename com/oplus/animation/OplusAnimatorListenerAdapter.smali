.class public Lcom/oplus/animation/OplusAnimatorListenerAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(Z)V

    return-void
.end method
