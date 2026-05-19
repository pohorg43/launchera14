.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onLaunchAnimationEnd(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    invoke-static {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->access$onLaunchAnimationEnd$jd(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;)V

    return-void
.end method

.method public static onLaunchAnimationProgress(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->access$onLaunchAnimationProgress$jd(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;F)V

    return-void
.end method

.method public static onLaunchAnimationStart(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    invoke-static {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->access$onLaunchAnimationStart$jd(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;)V

    return-void
.end method
