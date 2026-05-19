.class public abstract Landroid/view/IRecentsAnimationRunner$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Landroid/view/IRecentsAnimationRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IRecentsAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IRecentsAnimationRunner$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IRecentsAnimationRunner"

.field public static final TRANSACTION_onAnimationCanceled:I = 0x2

.field public static final TRANSACTION_onAnimationStart:I = 0x3

.field public static final TRANSACTION_onTasksAppeared:I = 0x4

.field public static final TRANSACTION_onTasksAppearedCallback:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IRecentsAnimationRunner"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.view.IRecentsAnimationRunner"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IRecentsAnimationRunner;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/view/IRecentsAnimationRunner;

    return-object v0

    :cond_13
    new-instance v0, Landroid/view/IRecentsAnimationRunner$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IRecentsAnimationRunner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "android.view.IRecentsAnimationRunner"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_84

    const/4 v1, 0x2

    if-eq p1, v1, :cond_74

    const/4 v1, 0x3

    if-eq p1, v1, :cond_43

    const/4 v1, 0x4

    if-eq p1, v1, :cond_37

    const/4 v1, 0x5

    if-eq p1, v1, :cond_23

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_23
    sget-object p1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransitionFinishedCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationRunner;->onTasksAppearedCallback([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V

    goto :goto_83

    :cond_37
    sget-object p1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/RemoteAnimationTarget;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationRunner;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    goto :goto_83

    :cond_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IRecentsAnimationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;

    move-result-object v2

    sget-object p1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Landroid/view/RemoteAnimationTarget;

    sget-object p1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Landroid/view/RemoteAnimationTarget;

    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/view/IRecentsAnimationRunner$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/graphics/Rect;

    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/view/IRecentsAnimationRunner$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/graphics/Rect;

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_83

    :cond_74
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    sget-object p3, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/window/TaskSnapshot;

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V

    :goto_83
    return v0

    :cond_84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
