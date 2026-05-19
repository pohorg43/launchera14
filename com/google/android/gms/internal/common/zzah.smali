.class public final Lcom/google/android/gms/internal/common/zzah;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# direct methods
.method public static zza([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_16

    aget-object v1, p0, v0

    if-eqz v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "at index "

    invoke-static {p1, v0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    return-object p0
.end method
