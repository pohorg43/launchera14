.class public abstract Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IGmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p2  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0xffffff

    if-le p1, v0, :cond_a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_a
    const-string p4, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_18

    move-object v1, v0

    goto :goto_2a

    :cond_18
    const-string v1, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-interface {p4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    if-eqz v2, :cond_25

    check-cast v1, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    goto :goto_2a

    :cond_25
    new-instance v1, Lcom/google/android/gms/common/internal/zzab;

    invoke-direct {v1, p4}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/os/IBinder;)V

    :goto_2a
    const/16 p4, 0x2e

    const/4 v2, 0x1

    if-ne p1, p4, :cond_48

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3e

    sget-object p1, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/GetServiceRequest;

    :cond_3e
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_48
    const/16 p0, 0x2f

    if-ne p1, p0, :cond_60

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_5a

    sget-object p0, Lcom/google/android/gms/common/internal/zzak;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/internal/zzak;

    :cond_5a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    const/4 p0, 0x4

    if-eq p1, p0, :cond_10d

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    if-eq p1, v2, :cond_f6

    const/4 p0, 0x2

    if-eq p1, p0, :cond_e7

    const/16 p0, 0x17

    if-eq p1, p0, :cond_e7

    const/16 p0, 0x19

    if-eq p1, p0, :cond_e7

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_e7

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_d2

    const/16 p0, 0x22

    if-eq p1, p0, :cond_ce

    const/16 p0, 0x29

    if-eq p1, p0, :cond_e7

    const/16 p0, 0x2b

    if-eq p1, p0, :cond_e7

    const/16 p0, 0x25

    if-eq p1, p0, :cond_e7

    const/16 p0, 0x26

    if-eq p1, p0, :cond_e7

    packed-switch p1, :pswitch_data_114

    goto/16 :goto_10d

    :pswitch_97  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_10d

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    goto :goto_10d

    :pswitch_a9  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    goto :goto_10d

    :pswitch_b0  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_10d

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    goto :goto_10d

    :cond_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    goto :goto_10d

    :cond_d2
    :pswitch_d2  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_10d

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    goto :goto_10d

    :cond_e7
    :pswitch_e7  #0x5, 0x6, 0x7, 0x8, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_10d

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    goto :goto_10d

    :cond_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_10d

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    :cond_10d
    :goto_10d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_114
    .packed-switch 0x5
        :pswitch_e7  #00000005
        :pswitch_e7  #00000006
        :pswitch_e7  #00000007
        :pswitch_e7  #00000008
        :pswitch_b0  #00000009
        :pswitch_a9  #0000000a
        :pswitch_e7  #0000000b
        :pswitch_e7  #0000000c
        :pswitch_e7  #0000000d
        :pswitch_e7  #0000000e
        :pswitch_e7  #0000000f
        :pswitch_e7  #00000010
        :pswitch_e7  #00000011
        :pswitch_e7  #00000012
        :pswitch_97  #00000013
        :pswitch_d2  #00000014
    .end packed-switch
.end method
