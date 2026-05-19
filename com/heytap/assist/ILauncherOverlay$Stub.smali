.class public abstract Lcom/heytap/assist/ILauncherOverlay$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/heytap/assist/ILauncherOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/assist/ILauncherOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/assist/ILauncherOverlay$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_checkoutAssistantAllowDrag:I = 0x16

.field public static final TRANSACTION_closeAlphaOverlay:I = 0x1d

.field public static final TRANSACTION_closeOverlay:I = 0x6

.field public static final TRANSACTION_endScroll:I = 0x3

.field public static final TRANSACTION_endScrollWithVelocity:I = 0x1e

.field public static final TRANSACTION_getVoiceSearchLanguage:I = 0xe

.field public static final TRANSACTION_hasOverlayContent:I = 0x10

.field public static final TRANSACTION_isVoiceDetectionRunning:I = 0xf

.field public static final TRANSACTION_onDestory:I = 0xb

.field public static final TRANSACTION_onGestureSwipeUp:I = 0x1b

.field public static final TRANSACTION_onPause:I = 0x8

.field public static final TRANSACTION_onProfileChanged:I = 0x15

.field public static final TRANSACTION_onRecentsAnimationFinished:I = 0x18

.field public static final TRANSACTION_onRecentsAnimationStart:I = 0x17

.field public static final TRANSACTION_onRecentsAnimationSurfaceSave:I = 0x1a

.field public static final TRANSACTION_onResume:I = 0x9

.field public static final TRANSACTION_onScroll:I = 0x2

.field public static final TRANSACTION_onStart:I = 0x7

.field public static final TRANSACTION_onStop:I = 0xa

.field public static final TRANSACTION_onViewAlphaChanged:I = 0x19

.field public static final TRANSACTION_openAlphaOverlay:I = 0x1c

.field public static final TRANSACTION_openOverlay:I = 0xc

.field public static final TRANSACTION_requestVoiceDetection:I = 0xd

.field public static final TRANSACTION_setActivityState:I = 0x13

.field public static final TRANSACTION_startScroll:I = 0x1

.field public static final TRANSACTION_startSearch:I = 0x14

.field public static final TRANSACTION_unusedMethod:I = 0x12

.field public static final TRANSACTION_windowAttached:I = 0x4

.field public static final TRANSACTION_windowAttached2:I = 0x11

.field public static final TRANSACTION_windowDetached:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.assist.ILauncherOverlay"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherOverlay;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.heytap.assist.ILauncherOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/heytap/assist/ILauncherOverlay;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/heytap/assist/ILauncherOverlay;

    return-object v0

    :cond_13
    new-instance v0, Lcom/heytap/assist/ILauncherOverlay$Stub$a;

    invoke-direct {v0, p0}, Lcom/heytap/assist/ILauncherOverlay$Stub$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.heytap.assist.ILauncherOverlay"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_145

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_14a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1b  #0x1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->endScrollWithVelocity(F)V

    goto/16 :goto_144

    :pswitch_24  #0x1d
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->closeAlphaOverlay()V

    goto/16 :goto_144

    :pswitch_29  #0x1c
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->openAlphaOverlay()V

    goto/16 :goto_144

    :pswitch_2e  #0x1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onGestureSwipeUp(Ljava/lang/String;)V

    goto/16 :goto_144

    :pswitch_37  #0x1a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/heytap/assist/ILauncherOverlay$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V

    goto/16 :goto_144

    :pswitch_44  #0x19
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onViewAlphaChanged(F)V

    goto/16 :goto_144

    :pswitch_4d  #0x18
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/heytap/assist/ILauncherOverlay$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onRecentsAnimationFinished(Landroid/os/Bundle;)V

    goto/16 :goto_144

    :pswitch_5a  #0x17
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onRecentsAnimationStart()V

    goto/16 :goto_144

    :pswitch_5f  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->checkoutAssistantAllowDrag(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_144

    :pswitch_6f  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_77

    move p1, v0

    goto :goto_78

    :cond_77
    move p1, v1

    :goto_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_7f

    move v1, v0

    :cond_7f
    invoke-interface {p0, p1, v1}, Lcom/heytap/assist/ILauncherOverlay;->onProfileChanged(ZZ)V

    goto/16 :goto_144

    :pswitch_84  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/heytap/assist/ILauncherOverlay$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lcom/heytap/assist/ILauncherOverlay;->startSearch([BLandroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_144

    :pswitch_9c  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->setActivityState(I)V

    goto/16 :goto_144

    :pswitch_a5  #0x12
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->unusedMethod()V

    goto/16 :goto_144

    :pswitch_aa  #0x11
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/heytap/assist/ILauncherOverlay$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/assist/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherOverlayCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/heytap/assist/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lcom/heytap/assist/ILauncherOverlayCallback;)V

    goto/16 :goto_144

    :pswitch_bf  #0x10
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->hasOverlayContent()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_144

    :pswitch_cb  #0xf
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->isVoiceDetectionRunning()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_144

    :pswitch_d7  #0xe
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_144

    :pswitch_e3  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ea

    move v1, v0

    :cond_ea
    invoke-interface {p0, v1}, Lcom/heytap/assist/ILauncherOverlay;->requestVoiceDetection(Z)V

    goto :goto_144

    :pswitch_ee  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->openOverlay(I)V

    goto :goto_144

    :pswitch_f6  #0xb
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onDestory()V

    goto :goto_144

    :pswitch_fa  #0xa
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onStop()V

    goto :goto_144

    :pswitch_fe  #0x9
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onResume()V

    goto :goto_144

    :pswitch_102  #0x8
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onPause()V

    goto :goto_144

    :pswitch_106  #0x7
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onStart()V

    goto :goto_144

    :pswitch_10a  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->closeOverlay(I)V

    goto :goto_144

    :pswitch_112  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_119

    move v1, v0

    :cond_119
    invoke-interface {p0, v1}, Lcom/heytap/assist/ILauncherOverlay;->windowDetached(Z)V

    goto :goto_144

    :pswitch_11d  #0x4
    sget-object p1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/heytap/assist/ILauncherOverlay$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/heytap/assist/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherOverlayCallback;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p3, p2}, Lcom/heytap/assist/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/heytap/assist/ILauncherOverlayCallback;I)V

    goto :goto_144

    :pswitch_135  #0x3
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->endScroll()V

    goto :goto_144

    :pswitch_139  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onScroll(F)V

    goto :goto_144

    :pswitch_141  #0x1
    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->startScroll()V

    :goto_144
    return v0

    :cond_145
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_141  #00000001
        :pswitch_139  #00000002
        :pswitch_135  #00000003
        :pswitch_11d  #00000004
        :pswitch_112  #00000005
        :pswitch_10a  #00000006
        :pswitch_106  #00000007
        :pswitch_102  #00000008
        :pswitch_fe  #00000009
        :pswitch_fa  #0000000a
        :pswitch_f6  #0000000b
        :pswitch_ee  #0000000c
        :pswitch_e3  #0000000d
        :pswitch_d7  #0000000e
        :pswitch_cb  #0000000f
        :pswitch_bf  #00000010
        :pswitch_aa  #00000011
        :pswitch_a5  #00000012
        :pswitch_9c  #00000013
        :pswitch_84  #00000014
        :pswitch_6f  #00000015
        :pswitch_5f  #00000016
        :pswitch_5a  #00000017
        :pswitch_4d  #00000018
        :pswitch_44  #00000019
        :pswitch_37  #0000001a
        :pswitch_2e  #0000001b
        :pswitch_29  #0000001c
        :pswitch_24  #0000001d
        :pswitch_1b  #0000001e
    .end packed-switch
.end method
