.class public abstract Landroid/view/IRecentsAnimationController$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Landroid/view/IRecentsAnimationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IRecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IRecentsAnimationController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IRecentsAnimationController"

.field public static final TRANSACTION_animateNavigationBarToApp:I = 0xb

.field public static final TRANSACTION_cleanupScreenshot:I = 0x6

.field public static final TRANSACTION_detachNavigationBarFromApp:I = 0xa

.field public static final TRANSACTION_enterZoomFromRecent:I = 0xd

.field public static final TRANSACTION_finish:I = 0x3

.field public static final TRANSACTION_finishZoom:I = 0xc

.field public static final TRANSACTION_removeTask:I = 0x9

.field public static final TRANSACTION_screenshotTask:I = 0x1

.field public static final TRANSACTION_setAnimationTargetsBehindSystemBars:I = 0x5

.field public static final TRANSACTION_setDeferCancelUntilNextTransition:I = 0x7

.field public static final TRANSACTION_setFinishTaskTransaction:I = 0x2

.field public static final TRANSACTION_setInputConsumerEnabled:I = 0x4

.field public static final TRANSACTION_setWillFinishToHome:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IRecentsAnimationController"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.view.IRecentsAnimationController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IRecentsAnimationController;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/view/IRecentsAnimationController;

    return-object v0

    :cond_13
    new-instance v0, Landroid/view/IRecentsAnimationController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IRecentsAnimationController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.view.IRecentsAnimationController"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_13d

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_142

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1b  #0xd
    sget-object p1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/view/IRecentsAnimationController$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/SurfaceControl;

    sget-object p1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/view/IRecentsAnimationController$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/SurfaceControl;

    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/view/IRecentsAnimationController$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/graphics/Rect;

    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/view/IRecentsAnimationController$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/graphics/Rect;

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/view/IRecentsAnimationController$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Landroid/view/IRecentsAnimationController;->enterZoomFromRecent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto/16 :goto_13c

    :pswitch_4e  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_56

    move v3, v0

    goto :goto_57

    :cond_56
    move v3, v1

    :goto_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5f

    move v4, v0

    goto :goto_60

    :cond_5f
    move v4, v1

    :goto_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/view/IRecentsAnimationController$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/view/IRecentsAnimationController$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Landroid/os/Bundle;

    move-object v2, p0

    invoke-interface/range {v2 .. v9}, Landroid/view/IRecentsAnimationController;->finishZoom(ZZIILandroid/graphics/Rect;ILandroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    :pswitch_87  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationController;->animateNavigationBarToApp(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    :pswitch_93  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9a

    move v1, v0

    :cond_9a
    invoke-interface {p0, v1}, Landroid/view/IRecentsAnimationController;->detachNavigationBarFromApp(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    :pswitch_a2  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->removeTask(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_13c

    :pswitch_b2  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b9

    move v1, v0

    :cond_b9
    invoke-interface {p0, v1}, Landroid/view/IRecentsAnimationController;->setWillFinishToHome(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    :pswitch_c1  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c9

    move p1, v0

    goto :goto_ca

    :cond_c9
    move p1, v1

    :goto_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_d1

    move v1, v0

    :cond_d1
    invoke-interface {p0, p1, v1}, Landroid/view/IRecentsAnimationController;->setDeferCancelUntilNextTransition(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    :pswitch_d9  #0x6
    invoke-interface {p0}, Landroid/view/IRecentsAnimationController;->cleanupScreenshot()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    :pswitch_e0  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e7

    move v1, v0

    :cond_e7
    invoke-interface {p0, v1}, Landroid/view/IRecentsAnimationController;->setAnimationTargetsBehindSystemBars(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    :pswitch_ee  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f5

    move v1, v0

    :cond_f5
    invoke-interface {p0, v1}, Landroid/view/IRecentsAnimationController;->setInputConsumerEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    :pswitch_fc  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_104

    move p1, v0

    goto :goto_105

    :cond_104
    move p1, v1

    :goto_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_10c

    move v1, v0

    :cond_10c
    invoke-interface {p0, p1, v1}, Landroid/view/IRecentsAnimationController;->finish(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    :pswitch_113  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/window/PictureInPictureSurfaceTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroid/view/IRecentsAnimationController$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/PictureInPictureSurfaceTransaction;

    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Landroid/view/IRecentsAnimationController$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl;

    invoke-interface {p0, p1, p4, p2}, Landroid/view/IRecentsAnimationController;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    :pswitch_12e  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->screenshotTask(I)Landroid/window/TaskSnapshot;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v0}, Landroid/view/IRecentsAnimationController$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_13c
    return v0

    :cond_13d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_12e  #00000001
        :pswitch_113  #00000002
        :pswitch_fc  #00000003
        :pswitch_ee  #00000004
        :pswitch_e0  #00000005
        :pswitch_d9  #00000006
        :pswitch_c1  #00000007
        :pswitch_b2  #00000008
        :pswitch_a2  #00000009
        :pswitch_93  #0000000a
        :pswitch_87  #0000000b
        :pswitch_4e  #0000000c
        :pswitch_1b  #0000000d
    .end packed-switch
.end method
