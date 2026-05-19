.class public abstract Lcom/oplus/zoomwindow/IOplusZoomTaskController$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/oplus/zoomwindow/IOplusZoomTaskController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoomwindow/IOplusZoomTaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoomwindow/IOplusZoomTaskController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onTransitionEnd:I = 0x6

.field public static final TRANSACTION_onTransitionStart:I = 0x8

.field public static final TRANSACTION_onZoomRotateChanged:I = 0x4

.field public static final TRANSACTION_onZoomStateChanged:I = 0x3

.field public static final TRANSACTION_registerZoomTaskListener:I = 0x1

.field public static final TRANSACTION_requestChangeZoomTask:I = 0x5

.field public static final TRANSACTION_setInputToken:I = 0x7

.field public static final TRANSACTION_unregisterZoomTaskListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.zoomwindow.IOplusZoomTaskController"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/zoomwindow/IOplusZoomTaskController;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.oplus.zoomwindow.IOplusZoomTaskController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/oplus/zoomwindow/IOplusZoomTaskController;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/oplus/zoomwindow/IOplusZoomTaskController;

    return-object v0

    :cond_13
    new-instance v0, Lcom/oplus/zoomwindow/IOplusZoomTaskController$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/zoomwindow/IOplusZoomTaskController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.oplus.zoomwindow.IOplusZoomTaskController"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_99

    packed-switch p1, :pswitch_data_9e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1a  #0x8
    invoke-interface {p0}, Lcom/oplus/zoomwindow/IOplusZoomTaskController;->onTransitionStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_98

    :pswitch_22  #0x7
    sget-object p1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskController$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerToken;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskController;->setInputToken(Landroid/window/WindowContainerToken;Landroid/os/IBinder;)V

    goto :goto_98

    :pswitch_32  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskController;->onTransitionEnd(I)V

    goto :goto_98

    :pswitch_3a  #0x5
    sget-object p1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskController$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerToken;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4e

    move p2, v0

    goto :goto_4f

    :cond_4e
    const/4 p2, 0x0

    :goto_4f
    invoke-interface {p0, p1, p3, p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskController;->requestChangeZoomTask(Landroid/window/WindowContainerToken;IZ)V

    goto :goto_98

    :pswitch_53  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/oplus/zoomwindow/IOplusZoomTaskController$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    invoke-interface {p0, p1, p3, p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskController;->onZoomRotateChanged(IILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    goto :goto_98

    :pswitch_67  #0x3
    sget-object p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskController$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    invoke-interface {p0, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskController;->onZoomStateChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    goto :goto_98

    :pswitch_73  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/zoomwindow/IOplusZoomTaskListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskController;->unregisterZoomTaskListener(Lcom/oplus/zoomwindow/IOplusZoomTaskListener;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_98

    :pswitch_86  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/zoomwindow/IOplusZoomTaskListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskController;->registerZoomTaskListener(Lcom/oplus/zoomwindow/IOplusZoomTaskListener;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_98
    return v0

    :cond_99
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_86  #00000001
        :pswitch_73  #00000002
        :pswitch_67  #00000003
        :pswitch_53  #00000004
        :pswitch_3a  #00000005
        :pswitch_32  #00000006
        :pswitch_22  #00000007
        :pswitch_1a  #00000008
    .end packed-switch
.end method
