.class public Li4/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Arrays.kt\nkotlin/collections/ArraysKt__ArraysKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n1#2:162\n*E\n"
    }
.end annotation


# direct methods
.method public static final a([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "contentDeepEquals"
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_152

    if-eqz p1, :cond_152

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    goto/16 :goto_152

    :cond_f
    array-length v2, p0

    move v3, v1

    :goto_11
    if-ge v3, v2, :cond_151

    aget-object v4, p0, v3

    aget-object v5, p1, v3

    if-ne v4, v5, :cond_1b

    goto/16 :goto_14c

    :cond_1b
    if-eqz v4, :cond_150

    if-nez v5, :cond_21

    goto/16 :goto_150

    :cond_21
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_34

    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_34

    check-cast v4, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Li4/i;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_34
    instance-of v6, v4, [B

    if-eqz v6, :cond_47

    instance-of v6, v5, [B

    if-eqz v6, :cond_47

    check-cast v4, [B

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_47
    instance-of v6, v4, [S

    if-eqz v6, :cond_5a

    instance-of v6, v5, [S

    if-eqz v6, :cond_5a

    check-cast v4, [S

    check-cast v5, [S

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_5a
    instance-of v6, v4, [I

    if-eqz v6, :cond_6d

    instance-of v6, v5, [I

    if-eqz v6, :cond_6d

    check-cast v4, [I

    check-cast v5, [I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_6d
    instance-of v6, v4, [J

    if-eqz v6, :cond_80

    instance-of v6, v5, [J

    if-eqz v6, :cond_80

    check-cast v4, [J

    check-cast v5, [J

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_80
    instance-of v6, v4, [F

    if-eqz v6, :cond_93

    instance-of v6, v5, [F

    if-eqz v6, :cond_93

    check-cast v4, [F

    check-cast v5, [F

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_93
    instance-of v6, v4, [D

    if-eqz v6, :cond_a6

    instance-of v6, v5, [D

    if-eqz v6, :cond_a6

    check-cast v4, [D

    check-cast v5, [D

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_a6
    instance-of v6, v4, [C

    if-eqz v6, :cond_b9

    instance-of v6, v5, [C

    if-eqz v6, :cond_b9

    check-cast v4, [C

    check-cast v5, [C

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_b9
    instance-of v6, v4, [Z

    if-eqz v6, :cond_cc

    instance-of v6, v5, [Z

    if-eqz v6, :cond_cc

    check-cast v4, [Z

    check-cast v5, [Z

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_cc
    instance-of v6, v4, Lh4/q;

    const/4 v7, 0x0

    if-eqz v6, :cond_eb

    instance-of v6, v5, Lh4/q;

    if-eqz v6, :cond_eb

    check-cast v4, Lh4/q;

    iget-object v4, v4, Lh4/q;->a:[B

    check-cast v5, Lh4/q;

    iget-object v5, v5, Lh4/q;->a:[B

    if-nez v4, :cond_e0

    move-object v4, v7

    :cond_e0
    if-nez v5, :cond_e3

    goto :goto_e4

    :cond_e3
    move-object v7, v5

    :goto_e4
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_eb
    instance-of v6, v4, Lh4/x;

    if-eqz v6, :cond_109

    instance-of v6, v5, Lh4/x;

    if-eqz v6, :cond_109

    check-cast v4, Lh4/x;

    iget-object v4, v4, Lh4/x;->a:[S

    check-cast v5, Lh4/x;

    iget-object v5, v5, Lh4/x;->a:[S

    if-nez v4, :cond_fe

    move-object v4, v7

    :cond_fe
    if-nez v5, :cond_101

    goto :goto_102

    :cond_101
    move-object v7, v5

    :goto_102
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_109
    instance-of v6, v4, Lh4/s;

    if-eqz v6, :cond_127

    instance-of v6, v5, Lh4/s;

    if-eqz v6, :cond_127

    check-cast v4, Lh4/s;

    iget-object v4, v4, Lh4/s;->a:[I

    check-cast v5, Lh4/s;

    iget-object v5, v5, Lh4/s;->a:[I

    if-nez v4, :cond_11c

    move-object v4, v7

    :cond_11c
    if-nez v5, :cond_11f

    goto :goto_120

    :cond_11f
    move-object v7, v5

    :goto_120
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_127
    instance-of v6, v4, Lh4/u;

    if-eqz v6, :cond_145

    instance-of v6, v5, Lh4/u;

    if-eqz v6, :cond_145

    check-cast v4, Lh4/u;

    iget-object v4, v4, Lh4/u;->a:[J

    check-cast v5, Lh4/u;

    iget-object v5, v5, Lh4/u;->a:[J

    if-nez v4, :cond_13a

    move-object v4, v7

    :cond_13a
    if-nez v5, :cond_13d

    goto :goto_13e

    :cond_13d
    move-object v7, v5

    :goto_13e
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_145
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14c

    return v1

    :cond_14c
    :goto_14c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    :cond_150
    :goto_150
    return v1

    :cond_151
    return v0

    :cond_152
    :goto_152
    return v1
.end method

.method public static final b([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "contentDeepToString"
    .end annotation

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    :cond_5
    array-length v0, p0

    const v1, 0x19999999

    if-le v0, v1, :cond_c

    move v0, v1

    :cond_c
    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v1, v0}, Li4/i;->c([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder(capacity).…builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "[...]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_c
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    array-length v1, p0

    :goto_16
    if-ge v0, v1, :cond_16b

    if-eqz v0, :cond_1f

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    aget-object v2, p0, v0

    const-string v3, "null"

    if-nez v2, :cond_2a

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_167

    :cond_2a
    instance-of v4, v2, [Ljava/lang/Object;

    if-eqz v4, :cond_35

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Li4/i;->c([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto/16 :goto_167

    :cond_35
    instance-of v4, v2, [B

    const-string v5, "toString(this)"

    if-eqz v4, :cond_49

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_167

    :cond_49
    instance-of v4, v2, [S

    if-eqz v4, :cond_5b

    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_167

    :cond_5b
    instance-of v4, v2, [I

    if-eqz v4, :cond_6d

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_167

    :cond_6d
    instance-of v4, v2, [J

    if-eqz v4, :cond_7f

    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_167

    :cond_7f
    instance-of v4, v2, [F

    if-eqz v4, :cond_91

    check-cast v2, [F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_167

    :cond_91
    instance-of v4, v2, [D

    if-eqz v4, :cond_a3

    check-cast v2, [D

    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_167

    :cond_a3
    instance-of v4, v2, [C

    if-eqz v4, :cond_b5

    check-cast v2, [C

    invoke-static {v2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_167

    :cond_b5
    instance-of v4, v2, [Z

    if-eqz v4, :cond_c7

    check-cast v2, [Z

    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_167

    :cond_c7
    instance-of v4, v2, Lh4/q;

    if-eqz v4, :cond_ee

    check-cast v2, Lh4/q;

    iget-object v2, v2, Lh4/q;->a:[B

    if-eqz v2, :cond_e9

    new-instance v4, Lh4/q;

    invoke-direct {v4, v2}, Lh4/q;-><init>([B)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const-string v5, ", "

    const-string v6, "["

    const-string v7, "]"

    invoke-static/range {v4 .. v11}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e8

    goto :goto_e9

    :cond_e8
    move-object v3, v2

    :cond_e9
    :goto_e9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_167

    :cond_ee
    instance-of v4, v2, Lh4/x;

    if-eqz v4, :cond_114

    check-cast v2, Lh4/x;

    iget-object v2, v2, Lh4/x;->a:[S

    if-eqz v2, :cond_110

    new-instance v4, Lh4/x;

    invoke-direct {v4, v2}, Lh4/x;-><init>([S)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const-string v5, ", "

    const-string v6, "["

    const-string v7, "]"

    invoke-static/range {v4 .. v11}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10f

    goto :goto_110

    :cond_10f
    move-object v3, v2

    :cond_110
    :goto_110
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_167

    :cond_114
    instance-of v4, v2, Lh4/s;

    if-eqz v4, :cond_13a

    check-cast v2, Lh4/s;

    iget-object v2, v2, Lh4/s;->a:[I

    if-eqz v2, :cond_136

    new-instance v4, Lh4/s;

    invoke-direct {v4, v2}, Lh4/s;-><init>([I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const-string v5, ", "

    const-string v6, "["

    const-string v7, "]"

    invoke-static/range {v4 .. v11}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_135

    goto :goto_136

    :cond_135
    move-object v3, v2

    :cond_136
    :goto_136
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_167

    :cond_13a
    instance-of v4, v2, Lh4/u;

    if-eqz v4, :cond_160

    check-cast v2, Lh4/u;

    iget-object v2, v2, Lh4/u;->a:[J

    if-eqz v2, :cond_15c

    new-instance v4, Lh4/u;

    invoke-direct {v4, v2}, Lh4/u;-><init>([J)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const-string v5, ", "

    const-string v6, "["

    const-string v7, "]"

    invoke-static/range {v4 .. v11}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15b

    goto :goto_15c

    :cond_15b
    move-object v3, v2

    :cond_15c
    :goto_15c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_167

    :cond_160
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_167
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    :cond_16b
    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Li4/o;->e(Ljava/util/List;)I

    move-result p0

    invoke-interface {p2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static final d(II)V
    .registers 6

    if-gt p0, p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "toIndex ("

    const-string v2, ") is greater than size ("

    const-string v3, ")."

    invoke-static {v1, p0, v2, p1, v3}, Landroidx/room/q0;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
