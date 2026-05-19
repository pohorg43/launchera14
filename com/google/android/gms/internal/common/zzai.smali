.class final Lcom/google/android/gms/internal/common/zzai;
.super Lcom/google/android/gms/internal/common/zzag;
.source ""


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/common/zzag;


# instance fields
.field public final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/common/zzai;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/common/zzai;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/common/zzai;->zza:Lcom/google/android/gms/internal/common/zzag;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzag;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzai;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/common/zzs;->zza(IILjava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zzai;->zzb:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final size()I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    return p0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .registers 5

    iget-object p2, p0, Lcom/google/android/gms/internal/common/zzai;->zzb:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    return p0
.end method

.method public final zzb()I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    return p0
.end method

.method public final zzc()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final zzf()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final zzg()[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zzai;->zzb:[Ljava/lang/Object;

    return-object p0
.end method
