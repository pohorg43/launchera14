.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,60:1\n260#2,16:61\n277#2:78\n397#2,9:79\n127#2:88\n406#2,20:90\n279#2,3:110\n440#2,4:113\n127#2:117\n446#2,10:118\n127#2:128\n456#2,5:129\n127#2:134\n461#2,24:135\n283#2,3:159\n500#2,3:162\n286#2,12:165\n503#2:177\n127#2:178\n506#2,2:179\n127#2:181\n510#2,10:182\n127#2:192\n520#2,5:193\n127#2:198\n525#2,5:199\n127#2:204\n530#2,28:205\n302#2,6:233\n138#2,67:239\n68#3:77\n74#3:89\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n34#1:61,16\n34#1:78\n34#1:79,9\n34#1:88\n34#1:90,20\n34#1:110,3\n34#1:113,4\n34#1:117\n34#1:118,10\n34#1:128\n34#1:129,5\n34#1:134\n34#1:135,24\n34#1:159,3\n34#1:162,3\n34#1:165,12\n34#1:177\n34#1:178\n34#1:179,2\n34#1:181\n34#1:182,10\n34#1:192\n34#1:193,5\n34#1:198\n34#1:199,5\n34#1:204\n34#1:205,28\n34#1:233,6\n50#1:239,67\n34#1:77\n34#1:89\n*E\n"
    }
.end annotation


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    const-string v4, "copyOf(this, newSize)"

    if-ge v3, v1, :cond_102

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-ltz v7, :cond_fb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v3

    :cond_28
    :goto_28
    if-ge v3, v1, :cond_f3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gez v8, :cond_55

    int-to-byte v7, v7

    add-int/lit8 v8, v5, 0x1

    aput-byte v7, v0, v5

    add-int/lit8 v3, v3, 0x1

    :goto_3b
    move v5, v8

    if-ge v3, v1, :cond_28

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gez v7, :cond_28

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    add-int/lit8 v8, v5, 0x1

    aput-byte v3, v0, v5

    move v3, v7

    goto :goto_3b

    :cond_55
    const/16 v8, 0x800

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gez v8, :cond_72

    shr-int/lit8 v8, v7, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    add-int/lit8 v9, v5, 0x1

    aput-byte v8, v0, v5

    and-int/lit8 v5, v7, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v7, v9, 0x1

    aput-byte v5, v0, v9

    :goto_6e
    add-int/lit8 v3, v3, 0x1

    :goto_70
    move v5, v7

    goto :goto_28

    :cond_72
    const v8, 0xd800

    const v9, 0xe000

    const/4 v10, 0x1

    if-gt v8, v7, :cond_7f

    if-ge v7, v9, :cond_7f

    move v8, v10

    goto :goto_80

    :cond_7f
    move v8, v2

    :goto_80
    const/16 v11, 0x3f

    if-nez v8, :cond_9f

    shr-int/lit8 v8, v7, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    add-int/lit8 v9, v5, 0x1

    aput-byte v8, v0, v5

    shr-int/lit8 v5, v7, 0x6

    and-int/2addr v5, v11

    or-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v8, v9, 0x1

    aput-byte v5, v0, v9

    and-int/lit8 v5, v7, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v7, v8, 0x1

    aput-byte v5, v0, v8

    goto :goto_6e

    :cond_9f
    const v8, 0xdbff

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gtz v8, :cond_ed

    add-int/lit8 v8, v3, 0x1

    if-le v1, v8, :cond_ed

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v13, 0xdc00

    if-gt v13, v12, :cond_b8

    if-ge v12, v9, :cond_b8

    goto :goto_b9

    :cond_b8
    move v10, v2

    :goto_b9
    if-nez v10, :cond_bc

    goto :goto_ed

    :cond_bc
    shl-int/lit8 v7, v7, 0xa

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v8, v7

    const v7, -0x35fdc00

    add-int/2addr v8, v7

    shr-int/lit8 v7, v8, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    add-int/lit8 v9, v5, 0x1

    aput-byte v7, v0, v5

    shr-int/lit8 v5, v8, 0xc

    and-int/2addr v5, v11

    or-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v7, v9, 0x1

    aput-byte v5, v0, v9

    shr-int/lit8 v5, v8, 0x6

    and-int/2addr v5, v11

    or-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v9, v7, 0x1

    aput-byte v5, v0, v7

    and-int/lit8 v5, v8, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v7, v9, 0x1

    aput-byte v5, v0, v9

    add-int/lit8 v3, v3, 0x2

    goto :goto_70

    :cond_ed
    :goto_ed
    add-int/lit8 v7, v5, 0x1

    aput-byte v11, v0, v5

    goto/16 :goto_6e

    :cond_f3
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_fb
    int-to-byte v4, v5

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .registers 16

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_1b2

    array-length v0, p0

    if-gt p2, v0, :cond_1b2

    if-gt p1, p2, :cond_1b2

    sub-int v0, p2, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    :cond_12
    :goto_12
    if-ge p1, p2, :cond_1ad

    aget-byte v3, p0, p1

    if-ltz v3, :cond_31

    int-to-char v3, v3

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    add-int/lit8 p1, p1, 0x1

    :goto_1f
    move v2, v4

    if-ge p1, p2, :cond_12

    aget-byte v3, p0, p1

    if-ltz v3, :cond_12

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    int-to-char p1, p1

    add-int/lit8 v4, v2, 0x1

    aput-char p1, v0, v2

    move p1, v3

    goto :goto_1f

    :cond_31
    shr-int/lit8 v4, v3, 0x5

    const/4 v5, -0x2

    const/16 v6, 0x80

    const v7, 0xfffd

    if-ne v4, v5, :cond_6f

    add-int/lit8 v3, p1, 0x1

    if-gt p2, v3, :cond_46

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto/16 :goto_12c

    :cond_46
    aget-byte v4, p0, p1

    aget-byte v3, p0, v3

    and-int/lit16 v5, v3, 0xc0

    if-ne v5, v6, :cond_50

    const/4 v5, 0x1

    goto :goto_51

    :cond_50
    move v5, v1

    :goto_51
    if-nez v5, :cond_5a

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto/16 :goto_12c

    :cond_5a
    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v4, v4, 0x6

    xor-int/2addr v3, v4

    if-ge v3, v6, :cond_68

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto/16 :goto_142

    :cond_68
    int-to-char v3, v3

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto/16 :goto_142

    :cond_6f
    shr-int/lit8 v4, v3, 0x4

    const v8, 0xe000

    const v9, 0xd800

    const/4 v10, 0x3

    if-ne v4, v5, :cond_e6

    add-int/lit8 v3, p1, 0x2

    if-gt p2, v3, :cond_94

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_12c

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_8f

    const/4 v2, 0x1

    goto :goto_90

    :cond_8f
    move v2, v1

    :goto_90
    if-nez v2, :cond_142

    goto/16 :goto_12c

    :cond_94
    aget-byte v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v11, v5, 0xc0

    if-ne v11, v6, :cond_a0

    const/4 v11, 0x1

    goto :goto_a1

    :cond_a0
    move v11, v1

    :goto_a1
    if-nez v11, :cond_aa

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto/16 :goto_12c

    :cond_aa
    aget-byte v3, p0, v3

    and-int/lit16 v11, v3, 0xc0

    if-ne v11, v6, :cond_b2

    const/4 v6, 0x1

    goto :goto_b3

    :cond_b2
    move v6, v1

    :goto_b3
    if-nez v6, :cond_bc

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto/16 :goto_142

    :cond_bc
    const v6, -0x1e080

    xor-int/2addr v3, v6

    shl-int/lit8 v5, v5, 0x6

    xor-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0xc

    xor-int/2addr v3, v4

    const/16 v4, 0x800

    if-ge v3, v4, :cond_d1

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto/16 :goto_12d

    :cond_d1
    if-gt v9, v3, :cond_d7

    if-ge v3, v8, :cond_d7

    const/4 v4, 0x1

    goto :goto_d8

    :cond_d7
    move v4, v1

    :goto_d8
    if-eqz v4, :cond_e0

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_12d

    :cond_e0
    int-to-char v3, v3

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_12d

    :cond_e6
    shr-int/lit8 v3, v3, 0x3

    if-ne v3, v5, :cond_1a4

    add-int/lit8 v3, p1, 0x3

    if-gt p2, v3, :cond_118

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_116

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_fe

    const/4 v2, 0x1

    goto :goto_ff

    :cond_fe
    move v2, v1

    :goto_ff
    if-nez v2, :cond_102

    goto :goto_116

    :cond_102
    add-int/lit8 v2, p1, 0x2

    if-le p2, v2, :cond_114

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_10e

    const/4 v2, 0x1

    goto :goto_10f

    :cond_10e
    move v2, v1

    :goto_10f
    if-nez v2, :cond_112

    goto :goto_114

    :cond_112
    :goto_112
    move v4, v3

    goto :goto_12d

    :cond_114
    :goto_114
    move v4, v3

    goto :goto_142

    :cond_116
    :goto_116
    move v4, v3

    goto :goto_12c

    :cond_118
    aget-byte v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v11, v5, 0xc0

    if-ne v11, v6, :cond_124

    const/4 v11, 0x1

    goto :goto_125

    :cond_124
    move v11, v1

    :goto_125
    if-nez v11, :cond_130

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_116

    :cond_12c
    :goto_12c
    const/4 v10, 0x1

    :goto_12d
    move v2, v4

    goto/16 :goto_1a1

    :cond_130
    add-int/lit8 v11, p1, 0x2

    aget-byte v11, p0, v11

    and-int/lit16 v12, v11, 0xc0

    if-ne v12, v6, :cond_13a

    const/4 v12, 0x1

    goto :goto_13b

    :cond_13a
    move v12, v1

    :goto_13b
    if-nez v12, :cond_144

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_114

    :cond_142
    :goto_142
    const/4 v10, 0x2

    goto :goto_12d

    :cond_144
    aget-byte v3, p0, v3

    and-int/lit16 v12, v3, 0xc0

    if-ne v12, v6, :cond_14c

    const/4 v6, 0x1

    goto :goto_14d

    :cond_14c
    move v6, v1

    :goto_14d
    if-nez v6, :cond_154

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_112

    :cond_154
    const v6, 0x381f80

    xor-int/2addr v3, v6

    shl-int/lit8 v6, v11, 0x6

    xor-int/2addr v3, v6

    shl-int/lit8 v5, v5, 0xc

    xor-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x12

    xor-int/2addr v3, v4

    const v4, 0x10ffff

    if-le v3, v4, :cond_16b

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_19f

    :cond_16b
    if-gt v9, v3, :cond_171

    if-ge v3, v8, :cond_171

    const/4 v4, 0x1

    goto :goto_172

    :cond_171
    move v4, v1

    :goto_172
    if-eqz v4, :cond_179

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_19f

    :cond_179
    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_182

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_19f

    :cond_182
    if-eq v3, v7, :cond_19b

    ushr-int/lit8 v4, v3, 0xa

    const v5, 0xd7c0

    add-int/2addr v4, v5

    int-to-char v4, v4

    add-int/lit8 v5, v2, 0x1

    aput-char v4, v0, v2

    and-int/lit16 v2, v3, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v3, v5, 0x1

    aput-char v2, v0, v5

    goto :goto_19f

    :cond_19b
    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    :goto_19f
    const/4 v10, 0x4

    move v2, v3

    :goto_1a1
    add-int/2addr p1, v10

    goto/16 :goto_12

    :cond_1a4
    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    add-int/lit8 p1, p1, 0x1

    move v2, v3

    goto/16 :goto_12

    :cond_1ad
    invoke-static {v0, v1, v2}, Lk7/m;->h([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "size="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    const-string v2, " beginIndex="

    const-string v3, " endIndex="

    invoke-static {v1, p0, v2, p1, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    array-length p2, p0

    :cond_a
    invoke-static {p0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
