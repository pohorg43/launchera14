.class public abstract Lcom/android/launcher3/anim/AbsAppTransitionAnimator;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAnimator()Landroid/animation/Animator;
.end method

.method public abstract setAnimator(Landroid/animation/Animator;)V
.end method

.method public abstract setAnimatorUpdateLister(Landroid/animation/AnimatorListenerAdapter;)V
.end method
