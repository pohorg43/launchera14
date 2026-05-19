.class public Lk7/l;
.super Lk7/k;
.source ""


# direct methods
.method public static final d(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Lk7/a;->a(I)I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    goto/16 :goto_6d

    :cond_16
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    const v6, -0x7fffffff

    const/4 v7, 0x1

    if-gez v5, :cond_39

    if-ne v1, v7, :cond_2a

    goto :goto_6d

    :cond_2a
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_32

    const/high16 v6, -0x80000000

    move v4, v7

    goto :goto_3b

    :cond_32
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_6d

    move v4, v7

    move v7, v3

    goto :goto_3b

    :cond_39
    move v4, v3

    move v7, v4

    :goto_3b
    const v5, -0x38e38e3

    move v8, v5

    :goto_3f
    if-ge v4, v1, :cond_60

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Character;->digit(II)I

    move-result v9

    if-gez v9, :cond_4c

    goto :goto_6d

    :cond_4c
    if-ge v3, v8, :cond_55

    if-ne v8, v5, :cond_6d

    div-int/lit8 v8, v6, 0xa

    if-ge v3, v8, :cond_55

    goto :goto_6d

    :cond_55
    mul-int/lit8 v3, v3, 0xa

    add-int v10, v6, v9

    if-ge v3, v10, :cond_5c

    goto :goto_6d

    :cond_5c
    sub-int/2addr v3, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_60
    if-eqz v7, :cond_67

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_6c

    :cond_67
    neg-int p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_6c
    move-object v2, p0

    :cond_6d
    :goto_6d
    return-object v2
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/Long;
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v1}, Lk7/a;->a(I)I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    goto/16 :goto_86

    :cond_18
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL  # -4.9E-324

    const/4 v9, 0x1

    if-gez v6, :cond_40

    if-ne v2, v9, :cond_2e

    goto :goto_86

    :cond_2e
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_36

    const-wide/high16 v7, -0x8000000000000000L

    move v4, v9

    goto :goto_41

    :cond_36
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_86

    move/from16 v18, v9

    move v9, v4

    move/from16 v4, v18

    goto :goto_41

    :cond_40
    move v9, v4

    :goto_41
    const-wide/16 v5, 0x0

    const-wide v10, -0x38e38e38e38e38eL  # -2.772000429909333E291

    move-wide v12, v10

    :goto_49
    if-ge v4, v2, :cond_79

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14, v1}, Ljava/lang/Character;->digit(II)I

    move-result v14

    if-gez v14, :cond_56

    goto :goto_86

    :cond_56
    cmp-long v15, v5, v12

    if-gez v15, :cond_66

    cmp-long v12, v12, v10

    if-nez v12, :cond_86

    int-to-long v12, v1

    div-long v12, v7, v12

    cmp-long v15, v5, v12

    if-gez v15, :cond_66

    goto :goto_86

    :cond_66
    int-to-long v10, v1

    mul-long/2addr v5, v10

    int-to-long v10, v14

    add-long v16, v7, v10

    cmp-long v14, v5, v16

    if-gez v14, :cond_70

    goto :goto_86

    :cond_70
    sub-long/2addr v5, v10

    add-int/lit8 v4, v4, 0x1

    const-wide v10, -0x38e38e38e38e38eL  # -2.772000429909333E291

    goto :goto_49

    :cond_79
    if-eqz v9, :cond_80

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_85

    :cond_80
    neg-long v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_85
    move-object v3, v0

    :cond_86
    :goto_86
    return-object v3
.end method
