.class public final Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onIntentStarted(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;Z)V
    .registers 2

    return-void
.end method

.method public static onLaunchAnimationCancelled(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;)V
    .registers 1

    return-void
.end method

.method public static onLaunchAnimationEnd(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;)V
    .registers 1

    return-void
.end method

.method public static onLaunchAnimationProgress(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;FF)V
    .registers 4

    const-string/jumbo p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onLaunchAnimationStart(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;)V
    .registers 1

    return-void
.end method
