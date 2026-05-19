.class public interface abstract Landroid/view/IRecentsAnimationRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IRecentsAnimationRunner$_Parcel;,
        Landroid/view/IRecentsAnimationRunner$Stub;,
        Landroid/view/IRecentsAnimationRunner$Default;
    }
.end annotation


# virtual methods
.method public abstract onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1e
        overrideSourcePosition = "/work/jenkins/workspace/sdkbuild/code/src-internal/android/view/IRecentsAnimationRunner.aidl:57:1:57:69"
        trackingBug = 0xa2d2051L
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTasksAppearedCallback([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
