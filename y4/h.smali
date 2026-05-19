.class public Ly4/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1537:1\n1#2:1538\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(FF)F
    .registers 3

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    move p0, p1

    :cond_5
    return p0
.end method

.method public static final b(FF)F
    .registers 3

    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    move p0, p1

    :cond_5
    return p0
.end method

.method public static final c(JJ)J
    .registers 5

    cmp-long v0, p0, p2

    if-lez v0, :cond_5

    move-wide p0, p2

    :cond_5
    return-wide p0
.end method

.method public static final d(Ly4/b;I)Ly4/b;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "step"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_25

    iget v0, p0, Ly4/b;->a:I

    iget v1, p0, Ly4/b;->b:I

    iget p0, p0, Ly4/b;->c:I

    if-lez p0, :cond_1e

    goto :goto_1f

    :cond_1e
    neg-int p1, p1

    :goto_1f
    new-instance p0, Ly4/b;

    invoke-direct {p0, v0, v1, p1}, Ly4/b;-><init>(III)V

    return-object p0

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step must be positive, was: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(II)Ly4/d;
    .registers 3

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_9

    sget-object p0, Ly4/d;->d:Ly4/d;

    sget-object p0, Ly4/d;->e:Ly4/d;

    return-object p0

    :cond_9
    new-instance v0, Ly4/d;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Ly4/d;-><init>(II)V

    return-object v0
.end method
