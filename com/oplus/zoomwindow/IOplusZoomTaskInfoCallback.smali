.class public interface abstract Lcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback$_Parcel;,
        Lcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback$Stub;,
        Lcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.zoomwindow.IOplusZoomTaskInfoCallback"


# virtual methods
.method public abstract onZoomInfoCallback(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
