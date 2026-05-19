.class public Lcom/google/android/gms/internal/common/zza;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final zza:Landroid/os/IBinder;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/google/android/gms/internal/common/zza;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    return-object p0
.end method

.method public final zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_11
    move-exception p0

    goto :goto_18

    :catch_13
    move-exception p0

    :try_start_14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_11

    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final zzC(ILandroid/os/Parcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    :try_start_4
    iget-object p0, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p2, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readException()V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_15

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_15
    move-exception p0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final zzD(ILandroid/os/Parcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, p2, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_c
    move-exception p0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final zza()Landroid/os/Parcel;
    .registers 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zza;->zzb:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method
