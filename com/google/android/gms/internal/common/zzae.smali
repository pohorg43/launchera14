.class final Lcom/google/android/gms/internal/common/zzae;
.super Lcom/google/android/gms/internal/common/zzz;
.source ""


# instance fields
.field private final zza:Lcom/google/android/gms/internal/common/zzag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/common/zzag;I)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/common/zzz;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzae;->zza:Lcom/google/android/gms/internal/common/zzag;

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zzae;->zza:Lcom/google/android/gms/internal/common/zzag;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
