.class public abstract Lcom/android/wm/shell/draganddrop/IDragAndDrop$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/android/wm/shell/draganddrop/IDragAndDrop;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/IDragAndDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/draganddrop/IDragAndDrop$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_isReadyToHandleDrag:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.draganddrop.IDragAndDrop"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/draganddrop/IDragAndDrop;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.wm.shell.draganddrop.IDragAndDrop"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/wm/shell/draganddrop/IDragAndDrop;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/wm/shell/draganddrop/IDragAndDrop;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/wm/shell/draganddrop/IDragAndDrop$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/IDragAndDrop$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.android.wm.shell.draganddrop.IDragAndDrop"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_25

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1a
    invoke-interface {p0}, Lcom/android/wm/shell/draganddrop/IDragAndDrop;->isReadyToHandleDrag()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_25
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
