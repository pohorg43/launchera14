.class public interface abstract Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Controller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract createAnimatorState()Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;
.end method

.method public abstract getLaunchContainer()Landroid/view/ViewGroup;
.end method

.method public abstract onIntentStarted(Z)V
.end method

.method public abstract onLaunchAnimationCancelled()V
.end method

.method public abstract onLaunchAnimationEnd()V
.end method

.method public abstract onLaunchAnimationProgress(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;FF)V
.end method

.method public abstract onLaunchAnimationStart()V
.end method

.method public abstract setLaunchContainer(Landroid/view/ViewGroup;)V
.end method
