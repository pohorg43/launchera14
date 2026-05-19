.class public final Landroidx/core/util/PairKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final component1(Landroid/util/Pair;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Pair<",
            "TF;TS;>;)TF;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method

.method public static final component1(Landroidx/core/util/Pair;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Pair<",
            "TF;TS;>;)TF;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method

.method public static final component2(Landroid/util/Pair;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Pair<",
            "TF;TS;>;)TS;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method

.method public static final component2(Landroidx/core/util/Pair;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Pair<",
            "TF;TS;>;)TS;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method

.method public static final toAndroidPair(Lh4/j;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lh4/j<",
            "+TF;+TS;>;)",
            "Landroid/util/Pair<",
            "TF;TS;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lh4/j;->a:Ljava/lang/Object;

    iget-object p0, p0, Lh4/j;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final toAndroidXPair(Lh4/j;)Landroidx/core/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lh4/j<",
            "+TF;+TS;>;)",
            "Landroidx/core/util/Pair<",
            "TF;TS;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/util/Pair;

    iget-object v1, p0, Lh4/j;->a:Ljava/lang/Object;

    iget-object p0, p0, Lh4/j;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final toKotlinPair(Landroid/util/Pair;)Lh4/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Pair<",
            "TF;TS;>;)",
            "Lh4/j<",
            "TF;TS;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh4/j;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final toKotlinPair(Landroidx/core/util/Pair;)Lh4/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Pair<",
            "TF;TS;>;)",
            "Lh4/j<",
            "TF;TS;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh4/j;

    iget-object v1, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
