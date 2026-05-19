.class public abstract Lcom/android/wm/shell/recents/IRecentTasks$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/android/wm/shell/recents/IRecentTasks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/recents/IRecentTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/recents/IRecentTasks$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getRecentTasks:I = 0x4

.field public static final TRANSACTION_getRunningTasks:I = 0x5

.field public static final TRANSACTION_registerRecentTasksListener:I = 0x2

.field public static final TRANSACTION_startRecentsTransition:I = 0x6

.field public static final TRANSACTION_unregisterRecentTasksListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.recents.IRecentTasks"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/recents/IRecentTasks;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.wm.shell.recents.IRecentTasks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/wm/shell/recents/IRecentTasks;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/wm/shell/recents/IRecentTasks$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/recents/IRecentTasks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.android.wm.shell.recents.IRecentTasks"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_94

    const/4 v1, 0x2

    if-eq p1, v1, :cond_88

    const/4 v1, 0x3

    if-eq p1, v1, :cond_7c

    const/4 v1, 0x4

    if-eq p1, v1, :cond_65

    const/4 v1, 0x5

    if-eq p1, v1, :cond_56

    const/4 v1, 0x6

    if-eq p1, v1, :cond_26

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_26
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/recents/IRecentTasks$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/app/PendingIntent;

    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/recents/IRecentTasks$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/Intent;

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/recents/IRecentTasks$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v6

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/recents/IRecentTasks;->startRecentsTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)V

    goto :goto_93

    :cond_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/recents/IRecentTasks;->getRunningTasks(I)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_93

    :cond_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/android/wm/shell/recents/IRecentTasks;->getRecentTasks(III)[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_93

    :cond_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/recents/IRecentTasksListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/recents/IRecentTasks;->unregisterRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    goto :goto_93

    :cond_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/recents/IRecentTasksListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/recents/IRecentTasks;->registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    :goto_93
    return v0

    :cond_94
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
