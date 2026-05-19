.class public interface abstract Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteAnimationFactory"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public appLaunchAnimStartOrEnd(Z[Landroid/view/RemoteAnimationTarget;)V
    .registers 3

    return-void
.end method

.method public getAppTransitionParams(Z)Lcom/android/systemui/shared/system/AppTransitionParam;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleAnimationMerged(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/view/IRecentsAnimationController;)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onAnimationCancelled()V
    .registers 1

    return-void
.end method

.method public abstract onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
.end method

.method public supportInterruption()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public tryFinishOpenRemote(Ljava/lang/Runnable;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method
