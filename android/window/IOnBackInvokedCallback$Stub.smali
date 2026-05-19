.class public abstract Landroid/window/IOnBackInvokedCallback$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Landroid/window/IOnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IOnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IOnBackInvokedCallback$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onBackCancelled:I = 0x3

.field public static final TRANSACTION_onBackInvoked:I = 0x4

.field public static final TRANSACTION_onBackProgressed:I = 0x2

.field public static final TRANSACTION_onBackStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.window.IOnBackInvokedCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.window.IOnBackInvokedCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/window/IOnBackInvokedCallback;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/window/IOnBackInvokedCallback;

    return-object v0

    :cond_13
    new-instance v0, Landroid/window/IOnBackInvokedCallback$Stub$a;

    invoke-direct {v0, p0}, Landroid/window/IOnBackInvokedCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "android.window.IOnBackInvokedCallback"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4f

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_27

    const/4 v1, 0x4

    if-eq p1, v1, :cond_23

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_23
    invoke-interface {p0}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V

    goto :goto_4e

    :cond_27
    invoke-interface {p0}, Landroid/window/IOnBackInvokedCallback;->onBackCancelled()V

    goto :goto_4e

    :cond_2b
    sget-object p1, Landroid/window/BackMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_37

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :cond_37
    check-cast v1, Landroid/window/BackMotionEvent;

    invoke-interface {p0, v1}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    goto :goto_4e

    :cond_3d
    sget-object p1, Landroid/window/BackMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_49

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :cond_49
    check-cast v1, Landroid/window/BackMotionEvent;

    invoke-interface {p0, v1}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V

    :goto_4e
    return v0

    :cond_4f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
