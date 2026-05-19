.class public abstract Lcom/android/wm/shell/back/IBackAnimation$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/android/wm/shell/back/IBackAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/back/IBackAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/back/IBackAnimation$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_clearBackToLauncherCallback:I = 0x2

.field public static final TRANSACTION_customizeStatusBarAppearance:I = 0x3

.field public static final TRANSACTION_setBackToLauncherCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.back.IBackAnimation"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/back/IBackAnimation;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.wm.shell.back.IBackAnimation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/wm/shell/back/IBackAnimation;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/wm/shell/back/IBackAnimation;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/wm/shell/back/IBackAnimation$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/IBackAnimation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.android.wm.shell.back.IBackAnimation"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4c

    if-eq p1, v0, :cond_35

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1f
    sget-object p1, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/back/IBackAnimation$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/AppearanceRegion;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/back/IBackAnimation;->customizeStatusBarAppearance(Lcom/android/internal/view/AppearanceRegion;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4b

    :cond_2e
    invoke-interface {p0}, Lcom/android/wm/shell/back/IBackAnimation;->clearBackToLauncherCallback()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4b

    :cond_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/view/IRemoteAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRemoteAnimationRunner;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/back/IBackAnimation;->setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4b
    return v0

    :cond_4c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
