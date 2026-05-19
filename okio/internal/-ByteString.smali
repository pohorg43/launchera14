.class public final Lokio/internal/-ByteString;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "-ByteString"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,363:1\n131#1,2:369\n133#1,9:372\n68#2:364\n74#2:365\n74#2:367\n74#2:368\n68#2:396\n74#2:408\n1#3:366\n1#3:371\n212#4,7:381\n122#4:388\n219#4,5:389\n122#4:394\n226#4:395\n228#4:397\n397#4,2:398\n122#4:400\n400#4,6:401\n127#4:407\n406#4:409\n122#4:410\n407#4,13:411\n122#4:424\n422#4:425\n122#4:426\n425#4:427\n230#4,3:428\n440#4,3:431\n122#4:434\n443#4:435\n127#4:436\n446#4,10:437\n127#4:447\n456#4:448\n122#4:449\n457#4,4:450\n127#4:454\n461#4:455\n122#4:456\n462#4,14:457\n122#4:471\n477#4,2:472\n122#4:474\n481#4:475\n122#4:476\n484#4:477\n234#4,3:478\n500#4,3:481\n122#4:484\n503#4:485\n127#4:486\n506#4,2:487\n127#4:489\n510#4,10:490\n127#4:500\n520#4:501\n122#4:502\n521#4,4:503\n127#4:507\n525#4:508\n122#4:509\n526#4,4:510\n127#4:514\n530#4:515\n122#4:516\n531#4,15:517\n122#4:532\n547#4,2:533\n122#4:535\n550#4,2:536\n122#4:538\n554#4:539\n122#4:540\n557#4:541\n241#4:542\n122#4:543\n242#4,5:544\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n*L\n329#1:369,2\n329#1:372,9\n67#1:364\n68#1:365\n258#1:367\n259#1:368\n348#1:396\n348#1:408\n329#1:371\n348#1:381,7\n353#1:388\n348#1:389,5\n353#1:394\n348#1:395\n348#1:397\n348#1:398,2\n353#1:400\n348#1:401,6\n348#1:407\n348#1:409\n353#1:410\n348#1:411,13\n353#1:424\n348#1:425\n353#1:426\n348#1:427\n348#1:428,3\n348#1:431,3\n353#1:434\n348#1:435\n348#1:436\n348#1:437,10\n348#1:447\n348#1:448\n353#1:449\n348#1:450,4\n348#1:454\n348#1:455\n353#1:456\n348#1:457,14\n353#1:471\n348#1:472,2\n353#1:474\n348#1:475\n353#1:476\n348#1:477\n348#1:478,3\n348#1:481,3\n353#1:484\n348#1:485\n348#1:486\n348#1:487,2\n348#1:489\n348#1:490,10\n348#1:500\n348#1:501\n353#1:502\n348#1:503,4\n348#1:507\n348#1:508\n353#1:509\n348#1:510,4\n348#1:514\n348#1:515\n353#1:516\n348#1:517,15\n353#1:532\n348#1:533,2\n353#1:535\n348#1:536,2\n353#1:538\n348#1:539\n353#1:540\n348#1:541\n348#1:542\n353#1:543\n348#1:544,5\n*E\n"
    }
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .registers 2

    invoke-static {p0, p1}, Lokio/internal/-ByteString;->codePointIndexToCharIndex([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .registers 1

    invoke-static {p0}, Lokio/internal/-ByteString;->decodeHexDigit(C)I

    move-result p0

    return p0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_8
    :goto_8
    if-ge v4, v2, :cond_22e

    aget-byte v7, v0, v4

    const/16 v8, 0xa0

    const/16 v9, 0x7f

    const/16 v10, 0x20

    const/16 v11, 0xd

    const v12, 0xfffd

    const/16 v13, 0xa

    const/high16 v14, 0x10000

    const/16 v16, -0x1

    const/16 v17, 0x1

    if-ltz v7, :cond_8d

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_26

    return v5

    :cond_26
    if-eq v7, v13, :cond_45

    if-eq v7, v11, :cond_45

    if-ltz v7, :cond_31

    if-ge v7, v10, :cond_31

    move/from16 v6, v17

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    :goto_32
    if-nez v6, :cond_41

    if-gt v9, v7, :cond_3b

    if-ge v7, v8, :cond_3b

    move/from16 v6, v17

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    :goto_3c
    if-eqz v6, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v6, 0x0

    goto :goto_43

    :cond_41
    :goto_41
    move/from16 v6, v17

    :goto_43
    if-nez v6, :cond_47

    :cond_45
    if-ne v7, v12, :cond_48

    :cond_47
    return v16

    :cond_48
    if-ge v7, v14, :cond_4d

    move/from16 v6, v17

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x2

    :goto_4e
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    :goto_51
    move/from16 v6, v18

    if-ge v4, v2, :cond_8

    aget-byte v7, v0, v4

    if-ltz v7, :cond_8

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v0, v4

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_62

    return v5

    :cond_62
    if-eq v4, v13, :cond_81

    if-eq v4, v11, :cond_81

    if-ltz v4, :cond_6d

    if-ge v4, v10, :cond_6d

    move/from16 v6, v17

    goto :goto_6e

    :cond_6d
    const/4 v6, 0x0

    :goto_6e
    if-nez v6, :cond_7d

    if-gt v9, v4, :cond_77

    if-ge v4, v8, :cond_77

    move/from16 v6, v17

    goto :goto_78

    :cond_77
    const/4 v6, 0x0

    :goto_78
    if-eqz v6, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 v6, 0x0

    goto :goto_7f

    :cond_7d
    :goto_7d
    move/from16 v6, v17

    :goto_7f
    if-nez v6, :cond_83

    :cond_81
    if-ne v4, v12, :cond_84

    :cond_83
    return v16

    :cond_84
    if-ge v4, v14, :cond_89

    move/from16 v4, v17

    goto :goto_8a

    :cond_89
    const/4 v4, 0x2

    :goto_8a
    add-int/2addr v5, v4

    move v4, v7

    goto :goto_51

    :cond_8d
    shr-int/lit8 v3, v7, 0x5

    const/4 v15, -0x2

    const/16 v14, 0x80

    if-ne v3, v15, :cond_ee

    add-int/lit8 v3, v4, 0x1

    if-gt v2, v3, :cond_9c

    if-ne v6, v1, :cond_9b

    return v5

    :cond_9b
    return v16

    :cond_9c
    aget-byte v7, v0, v4

    aget-byte v3, v0, v3

    and-int/lit16 v15, v3, 0xc0

    if-ne v15, v14, :cond_a7

    move/from16 v15, v17

    goto :goto_a8

    :cond_a7
    const/4 v15, 0x0

    :goto_a8
    if-nez v15, :cond_ae

    if-ne v6, v1, :cond_ad

    return v5

    :cond_ad
    return v16

    :cond_ae
    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v7, v7, 0x6

    xor-int/2addr v3, v7

    if-ge v3, v14, :cond_b9

    if-ne v6, v1, :cond_b8

    return v5

    :cond_b8
    return v16

    :cond_b9
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_be

    return v5

    :cond_be
    if-eq v3, v13, :cond_dd

    if-eq v3, v11, :cond_dd

    if-ltz v3, :cond_c9

    if-ge v3, v10, :cond_c9

    move/from16 v6, v17

    goto :goto_ca

    :cond_c9
    const/4 v6, 0x0

    :goto_ca
    if-nez v6, :cond_d9

    if-gt v9, v3, :cond_d3

    if-ge v3, v8, :cond_d3

    move/from16 v6, v17

    goto :goto_d4

    :cond_d3
    const/4 v6, 0x0

    :goto_d4
    if-eqz v6, :cond_d7

    goto :goto_d9

    :cond_d7
    const/4 v6, 0x0

    goto :goto_db

    :cond_d9
    :goto_d9
    move/from16 v6, v17

    :goto_db
    if-nez v6, :cond_df

    :cond_dd
    if-ne v3, v12, :cond_e0

    :cond_df
    return v16

    :cond_e0
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_e7

    move/from16 v15, v17

    goto :goto_e8

    :cond_e7
    const/4 v15, 0x2

    :goto_e8
    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x2

    :goto_eb
    move v6, v7

    goto/16 :goto_8

    :cond_ee
    shr-int/lit8 v3, v7, 0x4

    const v12, 0xe000

    const v8, 0xd800

    if-ne v3, v15, :cond_17f

    add-int/lit8 v3, v4, 0x2

    if-gt v2, v3, :cond_100

    if-ne v6, v1, :cond_ff

    return v5

    :cond_ff
    return v16

    :cond_100
    aget-byte v7, v0, v4

    add-int/lit8 v15, v4, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v9, v15, 0xc0

    if-ne v9, v14, :cond_10d

    move/from16 v9, v17

    goto :goto_10e

    :cond_10d
    const/4 v9, 0x0

    :goto_10e
    if-nez v9, :cond_114

    if-ne v6, v1, :cond_113

    return v5

    :cond_113
    return v16

    :cond_114
    aget-byte v3, v0, v3

    and-int/lit16 v9, v3, 0xc0

    if-ne v9, v14, :cond_11d

    move/from16 v9, v17

    goto :goto_11e

    :cond_11d
    const/4 v9, 0x0

    :goto_11e
    if-nez v9, :cond_124

    if-ne v6, v1, :cond_123

    return v5

    :cond_123
    return v16

    :cond_124
    const v9, -0x1e080

    xor-int/2addr v3, v9

    shl-int/lit8 v9, v15, 0x6

    xor-int/2addr v3, v9

    shl-int/lit8 v7, v7, 0xc

    xor-int/2addr v3, v7

    const/16 v7, 0x800

    if-ge v3, v7, :cond_136

    if-ne v6, v1, :cond_135

    return v5

    :cond_135
    return v16

    :cond_136
    if-gt v8, v3, :cond_13d

    if-ge v3, v12, :cond_13d

    move/from16 v7, v17

    goto :goto_13e

    :cond_13d
    const/4 v7, 0x0

    :goto_13e
    if-eqz v7, :cond_144

    if-ne v6, v1, :cond_143

    return v5

    :cond_143
    return v16

    :cond_144
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_149

    return v5

    :cond_149
    if-eq v3, v13, :cond_16c

    if-eq v3, v11, :cond_16c

    if-ltz v3, :cond_154

    if-ge v3, v10, :cond_154

    move/from16 v6, v17

    goto :goto_155

    :cond_154
    const/4 v6, 0x0

    :goto_155
    if-nez v6, :cond_168

    const/16 v6, 0x7f

    if-gt v6, v3, :cond_162

    const/16 v6, 0xa0

    if-ge v3, v6, :cond_162

    move/from16 v6, v17

    goto :goto_163

    :cond_162
    const/4 v6, 0x0

    :goto_163
    if-eqz v6, :cond_166

    goto :goto_168

    :cond_166
    const/4 v6, 0x0

    goto :goto_16a

    :cond_168
    :goto_168
    move/from16 v6, v17

    :goto_16a
    if-nez v6, :cond_171

    :cond_16c
    const v6, 0xfffd

    if-ne v3, v6, :cond_172

    :cond_171
    return v16

    :cond_172
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_179

    move/from16 v15, v17

    goto :goto_17a

    :cond_179
    const/4 v15, 0x2

    :goto_17a
    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_eb

    :cond_17f
    shr-int/lit8 v3, v7, 0x3

    if-ne v3, v15, :cond_22a

    add-int/lit8 v3, v4, 0x3

    if-gt v2, v3, :cond_18b

    if-ne v6, v1, :cond_18a

    return v5

    :cond_18a
    return v16

    :cond_18b
    aget-byte v7, v0, v4

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v15, v9, 0xc0

    if-ne v15, v14, :cond_198

    move/from16 v15, v17

    goto :goto_199

    :cond_198
    const/4 v15, 0x0

    :goto_199
    if-nez v15, :cond_19f

    if-ne v6, v1, :cond_19e

    return v5

    :cond_19e
    return v16

    :cond_19f
    add-int/lit8 v15, v4, 0x2

    aget-byte v15, v0, v15

    and-int/lit16 v10, v15, 0xc0

    if-ne v10, v14, :cond_1aa

    move/from16 v10, v17

    goto :goto_1ab

    :cond_1aa
    const/4 v10, 0x0

    :goto_1ab
    if-nez v10, :cond_1b1

    if-ne v6, v1, :cond_1b0

    return v5

    :cond_1b0
    return v16

    :cond_1b1
    aget-byte v3, v0, v3

    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v14, :cond_1ba

    move/from16 v10, v17

    goto :goto_1bb

    :cond_1ba
    const/4 v10, 0x0

    :goto_1bb
    if-nez v10, :cond_1c1

    if-ne v6, v1, :cond_1c0

    return v5

    :cond_1c0
    return v16

    :cond_1c1
    const v10, 0x381f80

    xor-int/2addr v3, v10

    shl-int/lit8 v10, v15, 0x6

    xor-int/2addr v3, v10

    shl-int/lit8 v9, v9, 0xc

    xor-int/2addr v3, v9

    shl-int/lit8 v7, v7, 0x12

    xor-int/2addr v3, v7

    const v7, 0x10ffff

    if-le v3, v7, :cond_1d7

    if-ne v6, v1, :cond_1d6

    return v5

    :cond_1d6
    return v16

    :cond_1d7
    if-gt v8, v3, :cond_1de

    if-ge v3, v12, :cond_1de

    move/from16 v7, v17

    goto :goto_1df

    :cond_1de
    const/4 v7, 0x0

    :goto_1df
    if-eqz v7, :cond_1e5

    if-ne v6, v1, :cond_1e4

    return v5

    :cond_1e4
    return v16

    :cond_1e5
    const/high16 v7, 0x10000

    if-ge v3, v7, :cond_1ed

    if-ne v6, v1, :cond_1ec

    return v5

    :cond_1ec
    return v16

    :cond_1ed
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_1f2

    return v5

    :cond_1f2
    if-eq v3, v13, :cond_217

    if-eq v3, v11, :cond_217

    if-ltz v3, :cond_1ff

    const/16 v6, 0x20

    if-ge v3, v6, :cond_1ff

    move/from16 v6, v17

    goto :goto_200

    :cond_1ff
    const/4 v6, 0x0

    :goto_200
    if-nez v6, :cond_213

    const/16 v6, 0x7f

    if-gt v6, v3, :cond_20d

    const/16 v6, 0xa0

    if-ge v3, v6, :cond_20d

    move/from16 v6, v17

    goto :goto_20e

    :cond_20d
    const/4 v6, 0x0

    :goto_20e
    if-eqz v6, :cond_211

    goto :goto_213

    :cond_211
    const/4 v6, 0x0

    goto :goto_215

    :cond_213
    :goto_213
    move/from16 v6, v17

    :goto_215
    if-nez v6, :cond_21c

    :cond_217
    const v6, 0xfffd

    if-ne v3, v6, :cond_21d

    :cond_21c
    return v16

    :cond_21d
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_224

    move/from16 v15, v17

    goto :goto_225

    :cond_224
    const/4 v15, 0x2

    :goto_225
    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_eb

    :cond_22a
    if-ne v6, v1, :cond_22d

    return v5

    :cond_22d
    return v16

    :cond_22e
    return v5
.end method

.method public static final commonBase64(Lokio/ByteString;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/-Base64;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonBase64Url(Lokio/ByteString;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {}, Lokio/-Base64;->getBASE64_URL_SAFE()[B

    move-result-object v0

    invoke-static {p0, v0}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_32

    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_2d

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2d
    if-ge v7, v8, :cond_30

    goto :goto_31

    :cond_30
    move v5, v6

    :goto_31
    return v5

    :cond_32
    if-ne v0, v1, :cond_35

    return v3

    :cond_35
    if-ge v0, v1, :cond_38

    goto :goto_39

    :cond_38
    move v5, v6

    :goto_39
    return v5
.end method

.method public static final commonCopyInto(Lokio/ByteString;I[BII)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    add-int/2addr p4, p1

    invoke-static {p0, p2, p3, p1, p4}, Li4/j;->g([B[BIII)[B

    return-void
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/-Base64;->decodeBase64ToArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_11

    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    if-eqz v0, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    :goto_1c
    if-ge v1, v0, :cond_3a

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lokio/internal/-ByteString;->access$decodeHexDigit(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokio/internal/-ByteString;->access$decodeHexDigit(C)I

    move-result v4

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_3a
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v3}, Lokio/ByteString;-><init>([B)V

    return-object p0

    :cond_40
    const-string v0, "Unexpected hex string: "

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/ByteString;

    invoke-static {p0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0, p0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final commonEndsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonEndsWith(Lokio/ByteString;[B)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_a

    goto :goto_2c

    :cond_a
    instance-of v2, p1, Lokio/ByteString;

    if-eqz v2, :cond_2b

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_2b

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, v1, v2, v1, p0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    return v0
.end method

.method public static final commonGetByte(Lokio/ByteString;I)B
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    aget-byte p0, p0, p1

    return p0
.end method

.method public static final commonGetSize(Lokio/ByteString;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static final commonHashCode(Lokio/ByteString;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$okio()I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/ByteString;->setHashCode$okio(I)V

    return v0
.end method

.method public static final commonHex(Lokio/ByteString;)Ljava/lang/String;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v2, v1, :cond_36

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_36
    invoke-static {v0}, Lk7/m;->g([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonIndexOf(Lokio/ByteString;[BI)I
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gt p2, v0, :cond_29

    :goto_18
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v3, p1

    invoke-static {v2, p2, p1, v1, v3}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_24

    return p2

    :cond_24
    if-eq p2, v0, :cond_29

    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public static final commonInternalArray(Lokio/ByteString;)[B
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;Lokio/ByteString;I)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p0

    return p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;[BI)I
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result p2

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_19
    const/4 v0, -0x1

    if-ge v0, p2, :cond_2c

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_29

    return p2

    :cond_29
    add-int/lit8 p2, p2, -0x1

    goto :goto_19

    :cond_2c
    return v0
.end method

.method public static final commonOf([B)Lokio/ByteString;
    .registers 3

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/ByteString;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v1, "copyOf(this, size)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p2, p3, p0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;I[BII)Z
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_26

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_26

    if-ltz p3, :cond_26

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_26

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;[B)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonSubstring(Lokio/ByteString;II)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_f

    move v2, v0

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    if-eqz v2, :cond_65

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    if-gt p2, v2, :cond_1b

    move v2, v0

    goto :goto_1c

    :cond_1b
    move v2, v1

    :goto_1c
    if-eqz v2, :cond_4a

    sub-int v2, p2, p1

    if-ltz v2, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    if-eqz v0, :cond_3e

    if-nez p1, :cond_30

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    if-ne p2, v0, :cond_30

    return-object p0

    :cond_30
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, p1, p2}, Li4/j;->j([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "endIndex < beginIndex"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    const-string p1, "endIndex > length("

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    const/16 p2, 0x29

    invoke-static {p1, p0, p2}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "beginIndex < 0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_49

    const/16 v3, 0x5a

    if-le v1, v3, :cond_1c

    goto :goto_49

    :cond_1c
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v4, "copyOf(this, size)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :goto_31
    array-length v0, p0

    if-ge v4, v0, :cond_43

    aget-byte v0, p0, v4

    if-lt v0, v2, :cond_40

    if-le v0, v3, :cond_3b

    goto :goto_40

    :cond_3b
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v4

    :cond_40
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_43
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4c
    return-object p0
.end method

.method public static final commonToAsciiUppercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    aget-byte v1, v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_49

    const/16 v3, 0x7a

    if-le v1, v3, :cond_1c

    goto :goto_49

    :cond_1c
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v4, "copyOf(this, size)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v1, -0x20

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :goto_31
    array-length v0, p0

    if-ge v4, v0, :cond_43

    aget-byte v0, p0, v4

    if-lt v0, v2, :cond_40

    if-le v0, v3, :cond_3b

    goto :goto_40

    :cond_3b
    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v4

    :cond_40
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_43
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4c
    return-object p0
.end method

.method public static final commonToByteArray(Lokio/ByteString;)[B
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "copyOf(this, size)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToByteString([BII)Lokio/ByteString;
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter([BI)I

    move-result p2

    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    new-instance v0, Lokio/ByteString;

    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Li4/j;->j([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static final commonToString(Lokio/ByteString;)Ljava/lang/String;
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    if-eqz v0, :cond_16

    const-string p0, "[size=0]"

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lokio/internal/-ByteString;->access$codePointIndexToCharIndex([BI)I

    move-result v0

    const/4 v4, -0x1

    const-string v5, "…]"

    const-string v6, "[size="

    const/16 v7, 0x5d

    if-ne v0, v4, :cond_ba

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v3, :cond_45

    const-string v0, "[hex="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_92

    :cond_45
    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hex="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v3

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v4, v4

    if-gt v3, v4, :cond_63

    move v4, v1

    goto :goto_64

    :cond_63
    move v4, v2

    :goto_64
    if-eqz v4, :cond_9f

    add-int/lit8 v4, v3, 0x0

    if-ltz v4, :cond_6b

    goto :goto_6c

    :cond_6b
    move v1, v2

    :goto_6c
    if-eqz v1, :cond_93

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-ne v3, v1, :cond_76

    goto :goto_84

    :cond_76
    new-instance v1, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, v2, v3}, Li4/j;->j([BII)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lokio/ByteString;-><init>([B)V

    move-object p0, v1

    :goto_84
    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_92
    return-object p0

    :cond_93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "endIndex < beginIndex"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9f
    const-string v0, "endIndex > length("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "\\"

    const-string v8, "\\\\"

    const/4 v9, 0x4

    invoke-static {v3, v4, v8, v2, v9}, Lk7/m;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v8, "\\n"

    invoke-static {v3, v4, v8, v2, v9}, Lk7/m;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r"

    const-string v8, "\\r"

    invoke-static {v3, v4, v8, v2, v9}, Lk7/m;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_102

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " text="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_116

    :cond_102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[text="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_116
    return-object p0
.end method

.method public static final commonUtf8(Lokio/ByteString;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getUtf8$okio()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v0

    invoke-static {v0}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    :cond_16
    return-object v0
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method

.method private static final decodeHexDigit(C)I
    .registers 5

    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_c

    const/16 v3, 0x3a

    if-ge p0, v3, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v2

    :goto_d
    if-eqz v3, :cond_11

    sub-int/2addr p0, v0

    goto :goto_2e

    :cond_11
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1b

    const/16 v3, 0x67

    if-ge p0, v3, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    if-eqz v3, :cond_1f

    goto :goto_2b

    :cond_1f
    const/16 v0, 0x41

    if-gt v0, p0, :cond_28

    const/16 v3, 0x47

    if-ge p0, v3, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    if-eqz v1, :cond_2f

    :goto_2b
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    :goto_2e
    return p0

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected hex digit: "

    invoke-static {v1, p0}, Landroidx/exifinterface/media/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .registers 1

    sget-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method

.method public static synthetic getHEX_DIGIT_CHARS$annotations()V
    .registers 0

    return-void
.end method
