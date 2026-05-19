.class public abstract Lcom/oplusos/notification/INotificationCenter$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/oplusos/notification/INotificationCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplusos/notification/INotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplusos/notification/INotificationCenter$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_areNotificationsEnabledForPackage:I = 0x8

.field public static final TRANSACTION_canShowBanner:I = 0x4

.field public static final TRANSACTION_disableAllNotificationChannel:I = 0xf

.field public static final TRANSACTION_enableAllNotificationChannel:I = 0xe

.field public static final TRANSACTION_getBadgeOption:I = 0x9

.field public static final TRANSACTION_getChannelName:I = 0x3

.field public static final TRANSACTION_getLockscreenVisibility:I = 0x5

.field public static final TRANSACTION_getStowOption:I = 0xd

.field public static final TRANSACTION_getSupportNumberBadgePackages:I = 0x7

.field public static final TRANSACTION_isChangeableFold:I = 0x6

.field public static final TRANSACTION_isFold:I = 0x2

.field public static final TRANSACTION_setFold:I = 0x1

.field public static final TRANSACTION_setStowOption:I = 0xc

.field public static final TRANSACTION_switchNotificationChannel:I = 0x10

.field public static final TRANSACTION_updateChannelSound:I = 0xa

.field public static final TRANSACTION_updateChannelVibration:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplusos.notification.INotificationCenter"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplusos/notification/INotificationCenter;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.oplusos.notification.INotificationCenter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/oplusos/notification/INotificationCenter;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/oplusos/notification/INotificationCenter;

    return-object v0

    :cond_13
    new-instance v0, Lcom/oplusos/notification/INotificationCenter$Stub$a;

    invoke-direct {v0, p0}, Lcom/oplusos/notification/INotificationCenter$Stub$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.oplusos.notification.INotificationCenter"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_16f

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_174

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1b  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2e

    move v1, v0

    :cond_2e
    invoke-interface {p0, p1, p4, v2, v1}, Lcom/oplusos/notification/INotificationCenter;->switchNotificationChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_16e

    :pswitch_36  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplusos/notification/INotificationCenter;->disableAllNotificationChannel(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_16e

    :pswitch_42  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplusos/notification/INotificationCenter;->enableAllNotificationChannel(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_16e

    :pswitch_4e  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplusos/notification/INotificationCenter;->getStowOption(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_16e

    :pswitch_62  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/oplusos/notification/INotificationCenter;->setStowOption(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_16e

    :pswitch_76  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_89

    move v1, v0

    :cond_89
    invoke-interface {p0, p1, p4, v2, v1}, Lcom/oplusos/notification/INotificationCenter;->updateChannelVibration(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_16e

    :pswitch_91  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, v1, p2}, Lcom/oplusos/notification/INotificationCenter;->updateChannelSound(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_16e

    :pswitch_ad  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplusos/notification/INotificationCenter;->getBadgeOption(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_16e

    :pswitch_c1  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplusos/notification/INotificationCenter;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_16e

    :pswitch_d5  #0x7
    invoke-interface {p0}, Lcom/oplusos/notification/INotificationCenter;->getSupportNumberBadgePackages()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_16e

    :pswitch_e1  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/oplusos/notification/INotificationCenter;->isChangeableFold(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_16e

    :pswitch_f9  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/oplusos/notification/INotificationCenter;->getLockscreenVisibility(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16e

    :pswitch_110  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/oplusos/notification/INotificationCenter;->canShowBanner(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16e

    :pswitch_127  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/oplusos/notification/INotificationCenter;->getChannelName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_16e

    :pswitch_13e  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/oplusos/notification/INotificationCenter;->isFold(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16e

    :pswitch_155  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_168

    move v1, v0

    :cond_168
    invoke-interface {p0, p1, p4, v2, v1}, Lcom/oplusos/notification/INotificationCenter;->setFold(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_16e
    return v0

    :cond_16f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_155  #00000001
        :pswitch_13e  #00000002
        :pswitch_127  #00000003
        :pswitch_110  #00000004
        :pswitch_f9  #00000005
        :pswitch_e1  #00000006
        :pswitch_d5  #00000007
        :pswitch_c1  #00000008
        :pswitch_ad  #00000009
        :pswitch_91  #0000000a
        :pswitch_76  #0000000b
        :pswitch_62  #0000000c
        :pswitch_4e  #0000000d
        :pswitch_42  #0000000e
        :pswitch_36  #0000000f
        :pswitch_1b  #00000010
    .end packed-switch
.end method
