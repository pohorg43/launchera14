.class Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/ISplitScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public exitSplitScreen(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public exitSplitScreenOnHide(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move p1, v1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1d
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "com.android.wm.shell.splitscreen.ISplitScreen"

    return-object p0
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xe

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xf

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public removeFromSideStage(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p5, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p6, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_29

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_29
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p5, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v0, p8, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p9, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_32

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_32
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p5, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v0, p8, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p9, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xd

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_32

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_32
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p4, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p5, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p7, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p8, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v0, p11, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p12, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x14

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_3b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3b
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p4, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p5, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p7, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p8, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v0, p11, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p12, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x13

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_3b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3b
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    invoke-static {v0, p4, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p5, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p6, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_29

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_29
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p2, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v0, p7, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p8, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x12

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_2f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p2, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v0, p7, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p8, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_2f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    invoke-static {v0, p3, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_20
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v0, p7, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p8, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xb

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_2f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v0, p7, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-static {v0, p8, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_2f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
