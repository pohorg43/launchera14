.class public abstract Lcom/heytap/assist/ILauncherOverlayCallback$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/heytap/assist/ILauncherOverlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/assist/ILauncherOverlayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/assist/ILauncherOverlayCallback$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_isPreloaded:I = 0x3

.field public static final TRANSACTION_overlayScrollChanged:I = 0x1

.field public static final TRANSACTION_overlayStatusChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.assist.ILauncherOverlayCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherOverlayCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.heytap.assist.ILauncherOverlayCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/heytap/assist/ILauncherOverlayCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/heytap/assist/ILauncherOverlayCallback;

    return-object v0

    :cond_13
    new-instance v0, Lcom/heytap/assist/ILauncherOverlayCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/heytap/assist/ILauncherOverlayCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.heytap.assist.ILauncherOverlayCallback"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_37

    if-eq p1, v0, :cond_2f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_27

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlayCallback;->isPreloaded(I)V

    goto :goto_36

    :cond_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlayCallback;->overlayStatusChanged(I)V

    goto :goto_36

    :cond_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlayCallback;->overlayScrollChanged(F)V

    :goto_36
    return v0

    :cond_37
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
