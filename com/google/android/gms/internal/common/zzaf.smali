.class final Lcom/google/android/gms/internal/common/zzaf;
.super Lcom/google/android/gms/internal/common/zzag;
.source ""


# instance fields
.field public final transient zza:I

.field public final transient zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/internal/common/zzag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/common/zzag;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzag;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/common/zzaf;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/common/zzaf;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/common/zzs;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    iget p0, p0, Lcom/google/android/gms/internal/common/zzaf;->zza:I

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzb:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/common/zzaf;->zzh(II)Lcom/google/android/gms/internal/common/zzag;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/zzaf;->zza:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzb:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zzc()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->zzc()I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/common/zzaf;->zza:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zzf()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final zzg()[Ljava/lang/Object;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzac;->zzg()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/common/zzag;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/common/zzs;->zzc(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    iget p0, p0, Lcom/google/android/gms/internal/common/zzaf;->zza:I

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/common/zzag;->zzh(II)Lcom/google/android/gms/internal/common/zzag;

    move-result-object p0

    return-object p0
.end method
