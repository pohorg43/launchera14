.class public final Lcom/google/android/gms/internal/common/zzq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# direct methods
.method public static final zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2
    .param p0  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, p0, Ljava/lang/CharSequence;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0
.end method
