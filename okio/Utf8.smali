.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "Utf8"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUtf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utf8.kt\nokio/Utf8\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,559:1\n397#1,9:563\n127#1:572\n406#1,20:574\n440#1,4:595\n127#1:599\n446#1,10:601\n127#1:611\n456#1,5:612\n127#1:617\n461#1,24:618\n500#1,4:643\n127#1:647\n506#1,2:649\n127#1:651\n510#1,10:652\n127#1:662\n520#1,5:663\n127#1:668\n525#1,5:669\n127#1:674\n530#1,28:675\n397#1,9:704\n127#1:713\n406#1,20:715\n440#1,4:736\n127#1:740\n446#1,10:742\n127#1:752\n456#1,5:753\n127#1:758\n461#1,24:759\n500#1,4:784\n127#1:788\n506#1,2:790\n127#1:792\n510#1,10:793\n127#1:803\n520#1,5:804\n127#1:809\n525#1,5:810\n127#1:815\n530#1,28:816\n127#1:844\n127#1:846\n127#1:848\n127#1:850\n127#1:852\n127#1:854\n127#1:856\n127#1:858\n127#1:860\n1#2:560\n74#3:561\n68#3:562\n74#3:573\n68#3:594\n74#3:600\n68#3:642\n74#3:648\n68#3:703\n74#3:714\n68#3:735\n74#3:741\n68#3:783\n74#3:789\n74#3:845\n74#3:847\n74#3:849\n74#3:851\n74#3:853\n74#3:855\n74#3:857\n74#3:859\n74#3:861\n*S KotlinDebug\n*F\n+ 1 Utf8.kt\nokio/Utf8\n*L\n228#1:563,9\n228#1:572\n228#1:574,20\n232#1:595,4\n232#1:599\n232#1:601,10\n232#1:611\n232#1:612,5\n232#1:617\n232#1:618,24\n236#1:643,4\n236#1:647\n236#1:649,2\n236#1:651\n236#1:652,10\n236#1:662\n236#1:663,5\n236#1:668\n236#1:669,5\n236#1:674\n236#1:675,28\n277#1:704,9\n277#1:713\n277#1:715,20\n281#1:736,4\n281#1:740\n281#1:742,10\n281#1:752\n281#1:753,5\n281#1:758\n281#1:759,24\n285#1:784,4\n285#1:788\n285#1:790,2\n285#1:792\n285#1:793,10\n285#1:803\n285#1:804,5\n285#1:809\n285#1:810,5\n285#1:815\n285#1:816,28\n405#1:844\n443#1:846\n455#1:848\n460#1:850\n503#1:852\n507#1:854\n519#1:856\n524#1:858\n529#1:860\n127#1:561\n226#1:562\n228#1:573\n230#1:594\n232#1:600\n234#1:642\n236#1:648\n275#1:703\n277#1:714\n279#1:735\n281#1:741\n283#1:783\n285#1:789\n405#1:845\n443#1:847\n455#1:849\n460#1:851\n503#1:853\n507#1:855\n519#1:857\n524#1:859\n529#1:861\n*E\n"
    }
.end annotation


# static fields
.field public static final HIGH_SURROGATE_HEADER:I = 0xd7c0

.field public static final LOG_SURROGATE_HEADER:I = 0xdc00

.field public static final MASK_2BYTES:I = 0xf80

.field public static final MASK_3BYTES:I = -0x1e080

.field public static final MASK_4BYTES:I = 0x381f80

.field public static final REPLACEMENT_BYTE:B = 0x3ft

.field public static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field public static final REPLACEMENT_CODE_POINT:I = 0xfffd


# direct methods
.method public static final isIsoControl(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_a

    const/16 v2, 0x20

    if-ge p0, v2, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    move v2, v1

    :goto_b
    if-nez v2, :cond_1c

    const/16 v2, 0x7f

    if-gt v2, p0, :cond_17

    const/16 v2, 0xa0

    if-ge p0, v2, :cond_17

    move p0, v0

    goto :goto_18

    :cond_17
    move p0, v1

    :goto_18
    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static final isUtf8Continuation(B)Z
    .registers 2

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static final process2Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lh4/z;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x1

    const v1, 0xfffd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-gt p2, v0, :cond_1a

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_1a
    aget-byte p1, p0, p1

    aget-byte p0, p0, v0

    and-int/lit16 p2, p0, 0xc0

    const/16 v0, 0x80

    if-ne p2, v0, :cond_26

    move p2, v2

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    if-nez p2, :cond_2d

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_2d
    xor-int/lit16 p0, p0, 0xf80

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    if-ge p0, v0, :cond_38

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3f
    const/4 p0, 0x2

    return p0
.end method

.method public static final process3Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lh4/z;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x80

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0xfffd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    if-gt p2, v0, :cond_2c

    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p1, v5

    if-le p2, p1, :cond_2b

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xc0

    if-ne p0, v1, :cond_27

    move v3, v5

    :cond_27
    if-nez v3, :cond_2a

    goto :goto_2b

    :cond_2a
    return v2

    :cond_2b
    :goto_2b
    return v5

    :cond_2c
    aget-byte p2, p0, p1

    add-int/2addr p1, v5

    aget-byte p1, p0, p1

    and-int/lit16 v6, p1, 0xc0

    if-ne v6, v1, :cond_37

    move v6, v5

    goto :goto_38

    :cond_37
    move v6, v3

    :goto_38
    if-nez v6, :cond_3e

    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v5

    :cond_3e
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    if-ne v0, v1, :cond_46

    move v0, v5

    goto :goto_47

    :cond_46
    move v0, v3

    :goto_47
    if-nez v0, :cond_4d

    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_4d
    const v0, -0x1e080

    xor-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0xc

    xor-int/2addr p0, p1

    const/16 p1, 0x800

    if-ge p0, p1, :cond_5f

    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    :cond_5f
    const p1, 0xd800

    if-gt p1, p0, :cond_6a

    const p1, 0xe000

    if-ge p0, p1, :cond_6a

    move v3, v5

    :cond_6a
    if-eqz v3, :cond_70

    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    :cond_70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_77
    const/4 p0, 0x3

    return p0
.end method

.method public static final process4Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lh4/z;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    const v5, 0xfffd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    if-gt p2, v0, :cond_3e

    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p1, 0x1

    if-le p2, p3, :cond_3d

    aget-byte p3, p0, p3

    and-int/lit16 p3, p3, 0xc0

    if-ne p3, v3, :cond_2a

    move p3, v6

    goto :goto_2b

    :cond_2a
    move p3, v4

    :goto_2b
    if-nez p3, :cond_2e

    goto :goto_3d

    :cond_2e
    add-int/2addr p1, v2

    if-le p2, p1, :cond_3c

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xc0

    if-ne p0, v3, :cond_38

    move v4, v6

    :cond_38
    if-nez v4, :cond_3b

    goto :goto_3c

    :cond_3b
    return v1

    :cond_3c
    :goto_3c
    return v2

    :cond_3d
    :goto_3d
    return v6

    :cond_3e
    aget-byte p2, p0, p1

    add-int/lit8 v7, p1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v8, v7, 0xc0

    if-ne v8, v3, :cond_4a

    move v8, v6

    goto :goto_4b

    :cond_4a
    move v8, v4

    :goto_4b
    if-nez v8, :cond_51

    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v6

    :cond_51
    add-int/2addr p1, v2

    aget-byte p1, p0, p1

    and-int/lit16 v8, p1, 0xc0

    if-ne v8, v3, :cond_5a

    move v8, v6

    goto :goto_5b

    :cond_5a
    move v8, v4

    :goto_5b
    if-nez v8, :cond_61

    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_61
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    if-ne v0, v3, :cond_69

    move v0, v6

    goto :goto_6a

    :cond_69
    move v0, v4

    :goto_6a
    if-nez v0, :cond_70

    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_70
    const v0, 0x381f80

    xor-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, v7, 0xc

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x12

    xor-int/2addr p0, p1

    const p1, 0x10ffff

    if-le p0, p1, :cond_86

    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    :cond_86
    const p1, 0xd800

    if-gt p1, p0, :cond_91

    const p1, 0xe000

    if-ge p0, p1, :cond_91

    move v4, v6

    :cond_91
    if-eqz v4, :cond_97

    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    :cond_97
    const/high16 p1, 0x10000

    if-ge p0, p1, :cond_9f

    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    :cond_9f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a6
    const/4 p0, 0x4

    return p0
.end method

.method public static final processUtf16Chars([BIILkotlin/jvm/functions/Function1;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "yield"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p1

    :cond_12
    :goto_12
    if-ge v3, v1, :cond_1a7

    aget-byte v4, v0, v3

    if-ltz v4, :cond_36

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :goto_22
    if-ge v3, v1, :cond_12

    aget-byte v4, v0, v3

    if-ltz v4, :cond_12

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto :goto_22

    :cond_36
    shr-int/lit8 v5, v4, 0x5

    const/4 v6, -0x2

    const/16 v8, 0x80

    const/4 v9, 0x0

    const v10, 0xfffd

    const/4 v11, 0x1

    if-ne v5, v6, :cond_70

    add-int/lit8 v4, v3, 0x1

    if-gt v1, v4, :cond_50

    :goto_46
    int-to-char v4, v10

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    :goto_4e
    move v7, v11

    goto :goto_6e

    :cond_50
    aget-byte v5, v0, v3

    aget-byte v4, v0, v4

    and-int/lit16 v6, v4, 0xc0

    if-ne v6, v8, :cond_59

    move v9, v11

    :cond_59
    if-nez v9, :cond_5c

    goto :goto_46

    :cond_5c
    xor-int/lit16 v4, v4, 0xf80

    shl-int/lit8 v5, v5, 0x6

    xor-int/2addr v4, v5

    if-ge v4, v8, :cond_65

    int-to-char v4, v10

    goto :goto_66

    :cond_65
    int-to-char v4, v4

    :goto_66
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    :goto_6d
    const/4 v7, 0x2

    :goto_6e
    add-int/2addr v3, v7

    goto :goto_12

    :cond_70
    shr-int/lit8 v5, v4, 0x4

    const v12, 0xe000

    const v13, 0xd800

    const/4 v14, 0x3

    if-ne v5, v6, :cond_e4

    add-int/lit8 v4, v3, 0x2

    if-gt v1, v4, :cond_95

    int-to-char v4, v10

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    if-le v1, v4, :cond_4e

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v8, :cond_92

    move v9, v11

    :cond_92
    if-nez v9, :cond_6d

    goto :goto_4e

    :cond_95
    aget-byte v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v8, :cond_a1

    move v15, v11

    goto :goto_a2

    :cond_a1
    move v15, v9

    :goto_a2
    if-nez v15, :cond_ad

    int-to-char v4, v10

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_ad
    aget-byte v4, v0, v4

    and-int/lit16 v15, v4, 0xc0

    if-ne v15, v8, :cond_b5

    move v8, v11

    goto :goto_b6

    :cond_b5
    move v8, v9

    :goto_b6
    if-nez v8, :cond_c1

    int-to-char v4, v10

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    :cond_c1
    const v7, -0x1e080

    xor-int/2addr v4, v7

    shl-int/lit8 v6, v6, 0x6

    xor-int/2addr v4, v6

    shl-int/lit8 v5, v5, 0xc

    xor-int/2addr v4, v5

    const/16 v5, 0x800

    if-ge v4, v5, :cond_d8

    :goto_cf
    int-to-char v4, v10

    :goto_d0
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e2

    :cond_d8
    if-gt v13, v4, :cond_dd

    if-ge v4, v12, :cond_dd

    move v9, v11

    :cond_dd
    if-eqz v9, :cond_e0

    goto :goto_cf

    :cond_e0
    int-to-char v4, v4

    goto :goto_d0

    :cond_e2
    :goto_e2
    move v7, v14

    goto :goto_6e

    :cond_e4
    shr-int/lit8 v4, v4, 0x3

    if-ne v4, v6, :cond_19c

    add-int/lit8 v4, v3, 0x3

    if-gt v1, v4, :cond_113

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    if-le v1, v4, :cond_4e

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v8, :cond_ff

    move v4, v11

    goto :goto_100

    :cond_ff
    move v4, v9

    :goto_100
    if-nez v4, :cond_104

    goto/16 :goto_4e

    :cond_104
    add-int/lit8 v4, v3, 0x2

    if-le v1, v4, :cond_6d

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v8, :cond_10f

    move v9, v11

    :cond_10f
    if-nez v9, :cond_e2

    goto/16 :goto_6d

    :cond_113
    aget-byte v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v8, :cond_11f

    move v15, v11

    goto :goto_120

    :cond_11f
    move v15, v9

    :goto_120
    if-nez v15, :cond_12b

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4e

    :cond_12b
    add-int/lit8 v15, v3, 0x2

    aget-byte v15, v0, v15

    and-int/lit16 v7, v15, 0xc0

    if-ne v7, v8, :cond_135

    move v7, v11

    goto :goto_136

    :cond_135
    move v7, v9

    :goto_136
    if-nez v7, :cond_141

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6d

    :cond_141
    aget-byte v4, v0, v4

    and-int/lit16 v7, v4, 0xc0

    if-ne v7, v8, :cond_149

    move v7, v11

    goto :goto_14a

    :cond_149
    move v7, v9

    :goto_14a
    if-nez v7, :cond_154

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e2

    :cond_154
    const v7, 0x381f80

    xor-int/2addr v4, v7

    shl-int/lit8 v7, v15, 0x6

    xor-int/2addr v4, v7

    shl-int/lit8 v6, v6, 0xc

    xor-int/2addr v4, v6

    shl-int/lit8 v5, v5, 0x12

    xor-int/2addr v4, v5

    const v5, 0x10ffff

    if-le v4, v5, :cond_16e

    :cond_166
    :goto_166
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_199

    :cond_16e
    if-gt v13, v4, :cond_173

    if-ge v4, v12, :cond_173

    move v9, v11

    :cond_173
    if-eqz v9, :cond_176

    goto :goto_166

    :cond_176
    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_17b

    goto :goto_166

    :cond_17b
    if-eq v4, v10, :cond_166

    ushr-int/lit8 v5, v4, 0xa

    const v6, 0xd7c0

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v4, v4, 0x3ff

    const v5, 0xdc00

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_199
    const/4 v7, 0x4

    goto/16 :goto_6e

    :cond_19c
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    :cond_1a7
    return-void
.end method

.method public static final processUtf8Bytes(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    :goto_a
    if-ge p1, p2, :cond_fa

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-gez v2, :cond_3e

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    :goto_22
    if-ge p1, p2, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-gez v0, :cond_a

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    goto :goto_22

    :cond_3e
    const/16 v2, 0x800

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-gez v2, :cond_60

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5d
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_60
    const v2, 0xd800

    const v3, 0xe000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v2, v0, :cond_6e

    if-ge v0, v3, :cond_6e

    move v2, v5

    goto :goto_6f

    :cond_6e
    move v2, v4

    :goto_6f
    const/16 v6, 0x3f

    if-nez v2, :cond_97

    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v6

    or-int/2addr v2, v1

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_97
    const v2, 0xdbff

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-gtz v2, :cond_f1

    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_f1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xdc00

    if-gt v8, v7, :cond_b0

    if-ge v7, v3, :cond_b0

    move v4, v5

    :cond_b0
    if-nez v4, :cond_b3

    goto :goto_f1

    :cond_b3
    shl-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v2, v0

    const v0, -0x35fdc00

    add-int/2addr v2, v0

    shr-int/lit8 v0, v2, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v0, v2, 0xc

    and-int/2addr v0, v6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v0, v2, 0x6

    and-int/2addr v0, v6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, v2, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_a

    :cond_f1
    :goto_f1
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5d

    :cond_fa
    return-void
.end method

.method public static final processUtf8CodePoints([BIILkotlin/jvm/functions/Function1;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "yield"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p1

    :cond_12
    :goto_12
    if-ge v3, v1, :cond_18c

    aget-byte v4, v0, v3

    if-ltz v4, :cond_34

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :goto_21
    if-ge v3, v1, :cond_12

    aget-byte v4, v0, v3

    if-ltz v4, :cond_12

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto :goto_21

    :cond_34
    shr-int/lit8 v5, v4, 0x5

    const/4 v6, -0x2

    const/16 v8, 0x80

    const/4 v9, 0x0

    const v10, 0xfffd

    const/4 v11, 0x1

    if-ne v5, v6, :cond_6f

    add-int/lit8 v4, v3, 0x1

    if-gt v1, v4, :cond_4d

    :goto_44
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    :goto_4b
    move v7, v11

    goto :goto_6d

    :cond_4d
    aget-byte v5, v0, v3

    aget-byte v4, v0, v4

    and-int/lit16 v6, v4, 0xc0

    if-ne v6, v8, :cond_56

    move v9, v11

    :cond_56
    if-nez v9, :cond_59

    goto :goto_44

    :cond_59
    xor-int/lit16 v4, v4, 0xf80

    shl-int/lit8 v5, v5, 0x6

    xor-int/2addr v4, v5

    if-ge v4, v8, :cond_65

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_69

    :cond_65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_69
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    :goto_6c
    const/4 v7, 0x2

    :goto_6d
    add-int/2addr v3, v7

    goto :goto_12

    :cond_6f
    shr-int/lit8 v5, v4, 0x4

    const v12, 0xe000

    const v13, 0xd800

    const/4 v14, 0x3

    if-ne v5, v6, :cond_e2

    add-int/lit8 v4, v3, 0x2

    if-gt v1, v4, :cond_93

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    if-le v1, v4, :cond_4b

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v8, :cond_90

    move v9, v11

    :cond_90
    if-nez v9, :cond_6c

    goto :goto_4b

    :cond_93
    aget-byte v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v8, :cond_9f

    move v15, v11

    goto :goto_a0

    :cond_9f
    move v15, v9

    :goto_a0
    if-nez v15, :cond_aa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_aa
    aget-byte v4, v0, v4

    and-int/lit16 v15, v4, 0xc0

    if-ne v15, v8, :cond_b2

    move v8, v11

    goto :goto_b3

    :cond_b2
    move v8, v9

    :goto_b3
    if-nez v8, :cond_bd

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    :cond_bd
    const v7, -0x1e080

    xor-int/2addr v4, v7

    shl-int/lit8 v6, v6, 0x6

    xor-int/2addr v4, v6

    shl-int/lit8 v5, v5, 0xc

    xor-int/2addr v4, v5

    const/16 v5, 0x800

    if-ge v4, v5, :cond_d3

    :goto_cb
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_cf
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e0

    :cond_d3
    if-gt v13, v4, :cond_d8

    if-ge v4, v12, :cond_d8

    move v9, v11

    :cond_d8
    if-eqz v9, :cond_db

    goto :goto_cb

    :cond_db
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_cf

    :cond_e0
    :goto_e0
    move v7, v14

    goto :goto_6d

    :cond_e2
    shr-int/lit8 v4, v4, 0x3

    if-ne v4, v6, :cond_181

    add-int/lit8 v4, v3, 0x3

    if-gt v1, v4, :cond_111

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    if-le v1, v4, :cond_4b

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v8, :cond_fd

    move v4, v11

    goto :goto_fe

    :cond_fd
    move v4, v9

    :goto_fe
    if-nez v4, :cond_102

    goto/16 :goto_4b

    :cond_102
    add-int/lit8 v4, v3, 0x2

    if-le v1, v4, :cond_6c

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v8, :cond_10d

    move v9, v11

    :cond_10d
    if-nez v9, :cond_e0

    goto/16 :goto_6c

    :cond_111
    aget-byte v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v8, :cond_11d

    move v15, v11

    goto :goto_11e

    :cond_11d
    move v15, v9

    :goto_11e
    if-nez v15, :cond_129

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4b

    :cond_129
    add-int/lit8 v15, v3, 0x2

    aget-byte v15, v0, v15

    and-int/lit16 v7, v15, 0xc0

    if-ne v7, v8, :cond_133

    move v7, v11

    goto :goto_134

    :cond_133
    move v7, v9

    :goto_134
    if-nez v7, :cond_13f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6c

    :cond_13f
    aget-byte v4, v0, v4

    and-int/lit16 v7, v4, 0xc0

    if-ne v7, v8, :cond_147

    move v7, v11

    goto :goto_148

    :cond_147
    move v7, v9

    :goto_148
    if-nez v7, :cond_152

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e0

    :cond_152
    const v7, 0x381f80

    xor-int/2addr v4, v7

    shl-int/lit8 v7, v15, 0x6

    xor-int/2addr v4, v7

    shl-int/lit8 v6, v6, 0xc

    xor-int/2addr v4, v6

    shl-int/lit8 v5, v5, 0x12

    xor-int/2addr v4, v5

    const v5, 0x10ffff

    if-le v4, v5, :cond_16c

    :goto_164
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_168
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17e

    :cond_16c
    if-gt v13, v4, :cond_171

    if-ge v4, v12, :cond_171

    move v9, v11

    :cond_171
    if-eqz v9, :cond_174

    goto :goto_164

    :cond_174
    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_179

    goto :goto_164

    :cond_179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_168

    :goto_17e
    const/4 v7, 0x4

    goto/16 :goto_6d

    :cond_181
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    :cond_18c
    return-void
.end method

.method public static final size(Ljava/lang/String;)J
    .registers 4
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final size(Ljava/lang/String;I)J
    .registers 5
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final size(Ljava/lang/String;II)J
    .registers 13
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    move v2, v0

    :goto_c
    if-eqz v2, :cond_96

    if-lt p2, p1, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    move v2, v0

    :goto_13
    if-eqz v2, :cond_84

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p2, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v0

    :goto_1d
    if-eqz v1, :cond_67

    const-wide/16 v1, 0x0

    :goto_21
    if-ge p1, p2, :cond_66

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    if-ge v3, v4, :cond_2f

    add-long/2addr v1, v5

    goto :goto_63

    :cond_2f
    const/16 v4, 0x800

    if-ge v3, v4, :cond_35

    const/4 v3, 0x2

    goto :goto_61

    :cond_35
    const v4, 0xd800

    if-lt v3, v4, :cond_60

    const v4, 0xdfff

    if-le v3, v4, :cond_40

    goto :goto_60

    :cond_40
    add-int/lit8 v7, p1, 0x1

    if-ge v7, p2, :cond_49

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_4a

    :cond_49
    move v8, v0

    :goto_4a
    const v9, 0xdbff

    if-gt v3, v9, :cond_5d

    const v3, 0xdc00

    if-lt v8, v3, :cond_5d

    if-le v8, v4, :cond_57

    goto :goto_5d

    :cond_57
    const/4 v3, 0x4

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x2

    goto :goto_21

    :cond_5d
    :goto_5d
    add-long/2addr v1, v5

    move p1, v7

    goto :goto_21

    :cond_60
    :goto_60
    const/4 v3, 0x3

    :goto_61
    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_63
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_66
    return-wide v1

    :cond_67
    const-string p1, "endIndex > string.length: "

    const-string v0, " > "

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    const-string p0, "endIndex < beginIndex: "

    const-string v0, " < "

    invoke-static {p0, p2, v0, p1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_96
    const-string p0, "beginIndex < 0: "

    invoke-static {p0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic size$default(Ljava/lang/String;IIILjava/lang/Object;)J
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_d
    invoke-static {p0, p1, p2}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method
