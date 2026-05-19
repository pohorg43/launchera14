.class public abstract Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
.super Lcom/google/android/gms/internal/common/zzb;
.source ""

# interfaces
.implements Lcom/google/android/gms/dynamic/IFragmentWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/IFragmentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .registers 3
    .param p0  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/dynamic/IFragmentWrapper;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/dynamic/IFragmentWrapper;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/dynamic/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .param p2  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_172

    const/4 p0, 0x0

    return p0

    :pswitch_5  #0x1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    :pswitch_18  #0x1a
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzq(Landroid/content/Intent;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    :pswitch_2f  #0x19
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzp(Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    :pswitch_42  #0x18
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)Z

    move-result p1

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzo(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    :pswitch_51  #0x17
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)Z

    move-result p1

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    :pswitch_60  #0x16
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)Z

    move-result p1

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzm(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    :pswitch_6f  #0x15
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)Z

    move-result p1

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzl(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    :pswitch_7e  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    :pswitch_91  #0x13
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzA()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    :pswitch_9f  #0x12
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzz()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    :pswitch_ad  #0x11
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzy()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    :pswitch_bb  #0x10
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzx()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    :pswitch_c9  #0xf
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzw()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    :pswitch_d7  #0xe
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzv()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    :pswitch_e5  #0xd
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzu()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    :pswitch_f3  #0xc
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_170

    :pswitch_ff  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzt()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_170

    :pswitch_10c  #0xa
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzc()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_170

    :pswitch_117  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzf()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_170

    :pswitch_122  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzj()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_170

    :pswitch_12d  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzs()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_170

    :pswitch_13a  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_170

    :pswitch_145  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zze()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_170

    :pswitch_150  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzb()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_170

    :pswitch_15b  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzd()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/common/zzc;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_170

    :pswitch_166  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzg()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_170
    const/4 p0, 0x1

    return p0

    :pswitch_data_172
    .packed-switch 0x2
        :pswitch_166  #00000002
        :pswitch_15b  #00000003
        :pswitch_150  #00000004
        :pswitch_145  #00000005
        :pswitch_13a  #00000006
        :pswitch_12d  #00000007
        :pswitch_122  #00000008
        :pswitch_117  #00000009
        :pswitch_10c  #0000000a
        :pswitch_ff  #0000000b
        :pswitch_f3  #0000000c
        :pswitch_e5  #0000000d
        :pswitch_d7  #0000000e
        :pswitch_c9  #0000000f
        :pswitch_bb  #00000010
        :pswitch_ad  #00000011
        :pswitch_9f  #00000012
        :pswitch_91  #00000013
        :pswitch_7e  #00000014
        :pswitch_6f  #00000015
        :pswitch_60  #00000016
        :pswitch_51  #00000017
        :pswitch_42  #00000018
        :pswitch_2f  #00000019
        :pswitch_18  #0000001a
        :pswitch_5  #0000001b
    .end packed-switch
.end method
