.class public final Lw4/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/RandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lw4/c;Ly4/d;)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly4/d;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget v0, p1, Ly4/b;->b:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_20

    iget p1, p1, Ly4/b;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lw4/c;->c(II)I

    move-result p0

    goto :goto_33

    :cond_20
    iget p1, p1, Ly4/b;->a:I

    const/high16 v1, -0x80000000

    if-le p1, v1, :cond_2f

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1, v0}, Lw4/c;->c(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_33

    :cond_2f
    invoke-virtual {p0}, Lw4/c;->b()I

    move-result p0

    :goto_33
    return p0

    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get random in empty range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
