.class public abstract Lcom/oplus/zoomwindow/IOplusZoomTaskListener$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/oplus/zoomwindow/IOplusZoomTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoomwindow/IOplusZoomTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoomwindow/IOplusZoomTaskListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getCurrentZoomInfo:I = 0xa

.field public static final TRANSACTION_notifyShowCompatibilityToast:I = 0x9

.field public static final TRANSACTION_notifySystemEvent:I = 0x5

.field public static final TRANSACTION_notifyZoomTaskEvent:I = 0x4

.field public static final TRANSACTION_onRemoteTransitionCancel:I = 0x8

.field public static final TRANSACTION_onRemoteTransitionStart:I = 0x7

.field public static final TRANSACTION_onZoomEnter:I = 0x1

.field public static final TRANSACTION_onZoomExit:I = 0x3

.field public static final TRANSACTION_onZoomTaskChanged:I = 0x2

.field public static final TRANSACTION_requestChangeZoomState:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.zoomwindow.IOplusZoomTaskListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/zoomwindow/IOplusZoomTaskListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.oplus.zoomwindow.IOplusZoomTaskListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;

    return-object v0

    :cond_13
    new-instance v0, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.oplus.zoomwindow.IOplusZoomTaskListener"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_d0

    packed-switch p1, :pswitch_data_d4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1a  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;->getCurrentZoomInfo(ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V

    goto/16 :goto_cf

    :pswitch_2b  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;->notifyShowCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_cf

    :pswitch_4a  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRemoteAnimationFinishedCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;->onRemoteTransitionCancel(ILandroid/view/IRemoteAnimationFinishedCallback;)V

    goto/16 :goto_cf

    :pswitch_5b  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/RemoteAnimationTarget;

    invoke-interface {p0, p1, p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;->onRemoteTransitionStart(I[Landroid/view/RemoteAnimationTarget;)V

    goto :goto_cf

    :pswitch_6b  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_7b

    move p2, v0

    goto :goto_7c

    :cond_7b
    const/4 p2, 0x0

    :goto_7c
    invoke-interface {p0, p1, p3, p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;->requestChangeZoomState(IIZ)V

    goto :goto_cf

    :pswitch_80  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;->notifySystemEvent(I)V

    goto :goto_cf

    :pswitch_88  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;->notifyZoomTaskEvent(II)V

    goto :goto_cf

    :pswitch_94  #0x3
    sget-object p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    sget-object p3, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1, p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;->onZoomExit(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_cf

    :pswitch_a8  #0x2
    sget-object p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    invoke-interface {p0, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;->onZoomTaskChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    goto :goto_cf

    :pswitch_b4  #0x1
    sget-object p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    sget-object p3, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object p4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl;

    invoke-interface {p0, p1, p3, p2}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;->onZoomEnter(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :goto_cf
    return v0

    :cond_d0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_b4  #00000001
        :pswitch_a8  #00000002
        :pswitch_94  #00000003
        :pswitch_88  #00000004
        :pswitch_80  #00000005
        :pswitch_6b  #00000006
        :pswitch_5b  #00000007
        :pswitch_4a  #00000008
        :pswitch_2b  #00000009
        :pswitch_1a  #0000000a
    .end packed-switch
.end method
