.class abstract Lcom/google/android/gms/internal/common/zzz;
.super Lcom/google/android/gms/internal/common/zzak;
.source ""


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# instance fields
.field private final zza:I

.field private zzb:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzak;-><init>()V

    const-string v0, "index"

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/common/zzs;->zzb(IILjava/lang/String;)I

    iput p1, p0, Lcom/google/android/gms/internal/common/zzz;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/common/zzz;->zza:I

    if-ge v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPrevious()Z
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/common/zzz;->zza(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final nextIndex()I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzz;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/common/zzz;->zza(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public abstract zza(I)Ljava/lang/Object;
.end method
