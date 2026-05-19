.class public abstract Lcom/android/wm/shell/transition/IShellTransitions$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/IShellTransitions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/IShellTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_forceCancelRecentsTransition:I = 0x7

.field public static final TRANSACTION_getShellApplyToken:I = 0x4

.field public static final TRANSACTION_registerRemote:I = 0x2

.field public static final TRANSACTION_registerRemoteTaskListener:I = 0x5

.field public static final TRANSACTION_unregisterRemote:I = 0x3

.field public static final TRANSACTION_unregisterRemoteTaskListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.transition.IShellTransitions"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IShellTransitions;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.wm.shell.transition.IShellTransitions"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/wm/shell/transition/IShellTransitions;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.android.wm.shell.transition.IShellTransitions"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_61

    packed-switch p1, :pswitch_data_66

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1a  #0x7
    invoke-interface {p0}, Lcom/android/wm/shell/transition/IShellTransitions;->forceCancelRecentsTransition()V

    goto :goto_60

    :pswitch_1e  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/IOplusTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IOplusTaskListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IShellTransitions;->unregisterRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    goto :goto_60

    :pswitch_2a  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/IOplusTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IOplusTaskListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IShellTransitions;->registerRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    goto :goto_60

    :pswitch_36  #0x4
    invoke-interface {p0}, Lcom/android/wm/shell/transition/IShellTransitions;->getShellApplyToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_60

    :pswitch_41  #0x3
    sget-object p1, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/transition/IShellTransitions$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/RemoteTransition;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IShellTransitions;->unregisterRemote(Landroid/window/RemoteTransition;)V

    goto :goto_60

    :pswitch_4d  #0x2
    sget-object p1, Landroid/window/TransitionFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/transition/IShellTransitions$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionFilter;

    sget-object p3, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/android/wm/shell/transition/IShellTransitions$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/RemoteTransition;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/transition/IShellTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    :goto_60
    return v0

    :cond_61
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_4d  #00000002
        :pswitch_41  #00000003
        :pswitch_36  #00000004
        :pswitch_2a  #00000005
        :pswitch_1e  #00000006
        :pswitch_1a  #00000007
    .end packed-switch
.end method
