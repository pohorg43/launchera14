.class public abstract Lcom/oplus/leftscreen/ILauncherOverlay$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/oplus/leftscreen/ILauncherOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/leftscreen/ILauncherOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/leftscreen/ILauncherOverlay$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_closeOverlay:I = 0x6

.field public static final TRANSACTION_endScroll:I = 0x3

.field public static final TRANSACTION_getVoiceSearchLanguage:I = 0xb

.field public static final TRANSACTION_hasOverlayContent:I = 0xd

.field public static final TRANSACTION_isVoiceDetectionRunning:I = 0xc

.field public static final TRANSACTION_onPause:I = 0x7

.field public static final TRANSACTION_onResume:I = 0x8

.field public static final TRANSACTION_onScroll:I = 0x2

.field public static final TRANSACTION_openOverlay:I = 0x9

.field public static final TRANSACTION_requestVoiceDetection:I = 0xa

.field public static final TRANSACTION_setActivityState:I = 0x10

.field public static final TRANSACTION_startScroll:I = 0x1

.field public static final TRANSACTION_startSearch:I = 0x11

.field public static final TRANSACTION_unusedMethod:I = 0xf

.field public static final TRANSACTION_windowAttached:I = 0x4

.field public static final TRANSACTION_windowAttached2:I = 0xe

.field public static final TRANSACTION_windowDetached:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.leftscreen.ILauncherOverlay"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/leftscreen/ILauncherOverlay;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.oplus.leftscreen.ILauncherOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/oplus/leftscreen/ILauncherOverlay;

    return-object v0

    :cond_13
    new-instance v0, Lcom/oplus/leftscreen/ILauncherOverlay$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/leftscreen/ILauncherOverlay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.oplus.leftscreen.ILauncherOverlay"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_ce

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_d2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1b  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/oplus/leftscreen/ILauncherOverlay$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lcom/oplus/leftscreen/ILauncherOverlay;->startSearch([BLandroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_cd

    :pswitch_33  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/leftscreen/ILauncherOverlay;->setActivityState(I)V

    goto/16 :goto_cd

    :pswitch_3c  #0xf
    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->unusedMethod()V

    goto/16 :goto_cd

    :pswitch_41  #0xe
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/leftscreen/ILauncherOverlay$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/leftscreen/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/leftscreen/ILauncherOverlayCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/leftscreen/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lcom/oplus/leftscreen/ILauncherOverlayCallback;)V

    goto/16 :goto_cd

    :pswitch_56  #0xd
    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->hasOverlayContent()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_cd

    :pswitch_62  #0xc
    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->isVoiceDetectionRunning()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_cd

    :pswitch_6d  #0xb
    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_cd

    :pswitch_78  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7f

    move v1, v0

    :cond_7f
    invoke-interface {p0, v1}, Lcom/oplus/leftscreen/ILauncherOverlay;->requestVoiceDetection(Z)V

    goto :goto_cd

    :pswitch_83  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/leftscreen/ILauncherOverlay;->openOverlay(I)V

    goto :goto_cd

    :pswitch_8b  #0x8
    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->onResume()V

    goto :goto_cd

    :pswitch_8f  #0x7
    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->onPause()V

    goto :goto_cd

    :pswitch_93  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/leftscreen/ILauncherOverlay;->closeOverlay(I)V

    goto :goto_cd

    :pswitch_9b  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a2

    move v1, v0

    :cond_a2
    invoke-interface {p0, v1}, Lcom/oplus/leftscreen/ILauncherOverlay;->windowDetached(Z)V

    goto :goto_cd

    :pswitch_a6  #0x4
    sget-object p1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/leftscreen/ILauncherOverlay$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/oplus/leftscreen/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/leftscreen/ILauncherOverlayCallback;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p3, p2}, Lcom/oplus/leftscreen/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/oplus/leftscreen/ILauncherOverlayCallback;I)V

    goto :goto_cd

    :pswitch_be  #0x3
    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->endScroll()V

    goto :goto_cd

    :pswitch_c2  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/leftscreen/ILauncherOverlay;->onScroll(F)V

    goto :goto_cd

    :pswitch_ca  #0x1
    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->startScroll()V

    :goto_cd
    return v0

    :cond_ce
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_ca  #00000001
        :pswitch_c2  #00000002
        :pswitch_be  #00000003
        :pswitch_a6  #00000004
        :pswitch_9b  #00000005
        :pswitch_93  #00000006
        :pswitch_8f  #00000007
        :pswitch_8b  #00000008
        :pswitch_83  #00000009
        :pswitch_78  #0000000a
        :pswitch_6d  #0000000b
        :pswitch_62  #0000000c
        :pswitch_56  #0000000d
        :pswitch_41  #0000000e
        :pswitch_3c  #0000000f
        :pswitch_33  #00000010
        :pswitch_1b  #00000011
    .end packed-switch
.end method
