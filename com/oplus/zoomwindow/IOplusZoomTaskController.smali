.class public interface abstract Lcom/oplus/zoomwindow/IOplusZoomTaskController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoomwindow/IOplusZoomTaskController$_Parcel;,
        Lcom/oplus/zoomwindow/IOplusZoomTaskController$Stub;,
        Lcom/oplus/zoomwindow/IOplusZoomTaskController$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.zoomwindow.IOplusZoomTaskController"


# virtual methods
.method public abstract onTransitionEnd(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTransitionStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onZoomRotateChanged(IILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onZoomStateChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerZoomTaskListener(Lcom/oplus/zoomwindow/IOplusZoomTaskListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestChangeZoomTask(Landroid/window/WindowContainerToken;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setInputToken(Landroid/window/WindowContainerToken;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterZoomTaskListener(Lcom/oplus/zoomwindow/IOplusZoomTaskListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
