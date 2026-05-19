.class public interface abstract Landroid/view/IRemoteAnimationRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IRemoteAnimationRunner$Stub;,
        Landroid/view/IRemoteAnimationRunner$Default;
    }
.end annotation


# virtual methods
.method public abstract onAnimationCancelled()V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1e
        overrideSourcePosition = "/work/jenkins/workspace/sdkbuild/code/src-internal/android/view/IRemoteAnimationRunner.aidl:48:1:48:69"
        trackingBug = 0xa2d2051L
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1e
        overrideSourcePosition = "/work/jenkins/workspace/sdkbuild/code/src-internal/android/view/IRemoteAnimationRunner.aidl:39:1:39:69"
        trackingBug = 0xa2d2051L
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
