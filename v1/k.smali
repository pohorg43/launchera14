.class public Lv1/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a([III[II)V
    .registers 25

    move/from16 v0, p2

    move/from16 v1, p4

    new-array v2, v1, [I

    const/16 v3, 0x10

    new-array v4, v3, [I

    new-array v5, v3, [I

    const/4 v6, 0x0

    move v7, v6

    :goto_e
    const/4 v8, 0x1

    if-ge v7, v1, :cond_1b

    aget v9, p3, v7

    aget v10, v4, v9

    add-int/2addr v10, v8

    aput v10, v4, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1b
    aput v6, v5, v8

    move v7, v8

    :goto_1e
    const/16 v9, 0xf

    if-ge v7, v9, :cond_2d

    add-int/lit8 v9, v7, 0x1

    aget v10, v5, v7

    aget v7, v4, v7

    add-int/2addr v10, v7

    aput v10, v5, v9

    move v7, v9

    goto :goto_1e

    :cond_2d
    move v7, v6

    :goto_2e
    if-ge v7, v1, :cond_41

    aget v10, p3, v7

    if-eqz v10, :cond_3e

    aget v10, p3, v7

    aget v11, v5, v10

    add-int/lit8 v12, v11, 0x1

    aput v12, v5, v10

    aput v7, v2, v11

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_41
    shl-int v1, v8, v0

    aget v5, v5, v9

    if-ne v5, v8, :cond_54

    move v0, v6

    :goto_48
    if-ge v0, v1, :cond_53

    add-int v3, p1, v0

    aget v4, v2, v6

    aput v4, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_53
    return-void

    :cond_54
    const/4 v5, 0x2

    move v11, v5

    move v7, v6

    move v10, v8

    :goto_58
    if-gt v10, v0, :cond_7f

    :goto_5a
    aget v12, v4, v10

    if-lez v12, :cond_7a

    add-int v12, p1, v6

    shl-int/lit8 v13, v10, 0x10

    add-int/lit8 v14, v7, 0x1

    aget v7, v2, v7

    or-int/2addr v13, v7

    move v7, v1

    :cond_68
    sub-int/2addr v7, v11

    add-int v15, v12, v7

    aput v13, p0, v15

    if-gtz v7, :cond_68

    invoke-static {v6, v10}, Lv1/k;->c(II)I

    move-result v6

    aget v7, v4, v10

    sub-int/2addr v7, v8

    aput v7, v4, v10

    move v7, v14

    goto :goto_5a

    :cond_7a
    add-int/lit8 v10, v10, 0x1

    shl-int/lit8 v11, v11, 0x1

    goto :goto_58

    :cond_7f
    add-int/lit8 v10, v1, -0x1

    add-int/lit8 v11, v0, 0x1

    const/4 v12, -0x1

    move/from16 v13, p1

    :goto_86
    if-gt v11, v9, :cond_e5

    :goto_88
    aget v14, v4, v11

    if-lez v14, :cond_e0

    and-int v14, v6, v10

    if-eq v14, v12, :cond_b7

    add-int/2addr v13, v1

    sub-int v1, v11, v0

    shl-int v1, v8, v1

    move v12, v11

    :goto_96
    if-ge v12, v9, :cond_a3

    aget v15, v4, v12

    sub-int/2addr v1, v15

    if-gtz v1, :cond_9e

    goto :goto_a3

    :cond_9e
    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_96

    :cond_a3
    :goto_a3
    sub-int/2addr v12, v0

    shl-int v1, v8, v12

    add-int v15, p1, v14

    add-int/2addr v12, v0

    shl-int/2addr v12, v3

    sub-int v16, v13, p1

    sub-int v16, v16, v14

    or-int v12, v12, v16

    aput v12, p0, v15

    move v15, v13

    move/from16 v16, v14

    move v14, v1

    goto :goto_bb

    :cond_b7
    move v14, v1

    move/from16 v16, v12

    move v15, v13

    :goto_bb
    shr-int v1, v6, v0

    add-int v17, v15, v1

    sub-int v1, v11, v0

    shl-int/2addr v1, v3

    add-int/lit8 v18, v7, 0x1

    aget v7, v2, v7

    or-int v19, v1, v7

    move v1, v14

    :cond_c9
    sub-int/2addr v1, v5

    add-int v7, v17, v1

    aput v19, p0, v7

    if-gtz v1, :cond_c9

    invoke-static {v6, v11}, Lv1/k;->c(II)I

    move-result v6

    aget v1, v4, v11

    sub-int/2addr v1, v8

    aput v1, v4, v11

    move v1, v14

    move v13, v15

    move/from16 v12, v16

    move/from16 v7, v18

    goto :goto_88

    :cond_e0
    add-int/lit8 v11, v11, 0x1

    shl-int/lit8 v5, v5, 0x1

    goto :goto_86

    :cond_e5
    return-void
.end method

.method public static final b(Li5/i0;Lh6/c;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/i0;",
            "Lh6/c;",
            "Ljava/util/Collection<",
            "Li5/h0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packageFragments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Li5/k0;

    if-eqz v0, :cond_1a

    check-cast p0, Li5/k0;

    invoke-interface {p0, p1, p2}, Li5/k0;->c(Lh6/c;Ljava/util/Collection;)V

    goto :goto_21

    :cond_1a
    invoke-interface {p0, p1}, Li5/i0;->a(Lh6/c;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_21
    return-void
.end method

.method public static c(II)I
    .registers 3

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    :goto_4
    and-int v0, p0, p1

    if-eqz v0, :cond_b

    shr-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v0, p1, -0x1

    and-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static final d(Li5/i0;Lh6/c;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Li5/k0;

    if-eqz v0, :cond_15

    check-cast p0, Li5/k0;

    invoke-interface {p0, p1}, Li5/k0;->b(Lh6/c;)Z

    move-result p0

    goto :goto_1f

    :cond_15
    invoke-static {p0, p1}, Lv1/k;->e(Li5/i0;Lh6/c;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    :goto_1f
    return p0
.end method

.method public static final e(Li5/i0;Lh6/c;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/i0;",
            "Lh6/c;",
            ")",
            "Ljava/util/List<",
            "Li5/h0;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lv1/k;->b(Li5/i0;Lh6/c;Ljava/util/Collection;)V

    return-object v0
.end method
