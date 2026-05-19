.class public abstract Lcom/android/common/util/AnimationCallback;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field private mIsCancelled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/common/util/AnimationCallback;->mIsCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean v0, p0, Lcom/android/common/util/AnimationCallback;->mIsCancelled:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/common/util/AnimationCallback;->onAnimationFinish(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public abstract onAnimationFinish(Landroid/animation/Animator;Z)V
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/common/util/AnimationCallback;->mIsCancelled:Z

    return-void
.end method
