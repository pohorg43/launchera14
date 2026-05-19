.class public interface abstract Lcom/oplus/zoomwindow/IOplusZoomTaskListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoomwindow/IOplusZoomTaskListener$_Parcel;,
        Lcom/oplus/zoomwindow/IOplusZoomTaskListener$Stub;,
        Lcom/oplus/zoomwindow/IOplusZoomTaskListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.zoomwindow.IOplusZoomTaskListener"


# virtual methods
.method public abstract getCurrentZoomInfo(ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyShowCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySystemEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyZoomTaskEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRemoteTransitionCancel(ILandroid/view/IRemoteAnimationFinishedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRemoteTransitionStart(I[Landroid/view/RemoteAnimationTarget;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onZoomEnter(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onZoomExit(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onZoomTaskChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestChangeZoomState(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
