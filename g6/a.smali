.class public Lg6/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "kotlin.jvm.serialization.use8to7"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(I)V
    .registers 20

    move/from16 v0, p0

    const/16 v1, 0xe

    const/16 v2, 0xc

    const/16 v3, 0xa

    const/16 v4, 0x8

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1e

    if-eq v0, v6, :cond_1e

    if-eq v0, v5, :cond_1e

    if-eq v0, v4, :cond_1e

    if-eq v0, v3, :cond_1e

    if-eq v0, v2, :cond_1e

    if-eq v0, v1, :cond_1e

    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_20

    :cond_1e
    const-string v8, "@NotNull method %s.%s must not return null"

    :goto_20
    const/4 v9, 0x2

    if-eq v0, v7, :cond_31

    if-eq v0, v6, :cond_31

    if-eq v0, v5, :cond_31

    if-eq v0, v4, :cond_31

    if-eq v0, v3, :cond_31

    if-eq v0, v2, :cond_31

    if-eq v0, v1, :cond_31

    move v10, v6

    goto :goto_32

    :cond_31
    move v10, v9

    :goto_32
    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "kotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding"

    const/4 v12, 0x0

    if-eq v0, v7, :cond_4a

    if-eq v0, v6, :cond_4a

    if-eq v0, v5, :cond_4a

    if-eq v0, v4, :cond_4a

    if-eq v0, v3, :cond_4a

    if-eq v0, v2, :cond_4a

    if-eq v0, v1, :cond_4a

    const-string v13, "data"

    aput-object v13, v10, v12

    goto :goto_4c

    :cond_4a
    aput-object v11, v10, v12

    :goto_4c
    const-string v12, "decode7to8"

    const-string v13, "combineStringArrayIntoBytes"

    const-string v14, "dropMarker"

    const-string v15, "decodeBytes"

    const-string v16, "splitBytesToStringArray"

    const-string v17, "encode8to7"

    const-string v18, "encodeBytes"

    if-eq v0, v7, :cond_7d

    if-eq v0, v6, :cond_7a

    if-eq v0, v5, :cond_77

    if-eq v0, v4, :cond_74

    if-eq v0, v3, :cond_71

    if-eq v0, v2, :cond_6e

    if-eq v0, v1, :cond_6b

    aput-object v11, v10, v7

    goto :goto_7f

    :cond_6b
    aput-object v12, v10, v7

    goto :goto_7f

    :cond_6e
    aput-object v13, v10, v7

    goto :goto_7f

    :cond_71
    aput-object v14, v10, v7

    goto :goto_7f

    :cond_74
    aput-object v15, v10, v7

    goto :goto_7f

    :cond_77
    aput-object v16, v10, v7

    goto :goto_7f

    :cond_7a
    aput-object v17, v10, v7

    goto :goto_7f

    :cond_7d
    aput-object v18, v10, v7

    :goto_7f
    packed-switch v0, :pswitch_data_ba

    aput-object v18, v10, v9

    goto :goto_9b

    :pswitch_85  #0xd
    aput-object v12, v10, v9

    goto :goto_9b

    :pswitch_88  #0xb
    aput-object v13, v10, v9

    goto :goto_9b

    :pswitch_8b  #0x9
    aput-object v14, v10, v9

    goto :goto_9b

    :pswitch_8e  #0x7
    aput-object v15, v10, v9

    goto :goto_9b

    :pswitch_91  #0x5
    aput-object v16, v10, v9

    goto :goto_9b

    :pswitch_94  #0x4
    const-string v11, "addModuloByte"

    aput-object v11, v10, v9

    goto :goto_9b

    :pswitch_99  #0x2
    aput-object v17, v10, v9

    :goto_9b
    :pswitch_9b  #0x1, 0x3, 0x6, 0x8, 0xa, 0xc, 0xe
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq v0, v7, :cond_b3

    if-eq v0, v6, :cond_b3

    if-eq v0, v5, :cond_b3

    if-eq v0, v4, :cond_b3

    if-eq v0, v3, :cond_b3

    if-eq v0, v2, :cond_b3

    if-eq v0, v1, :cond_b3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b8

    :cond_b3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_b8
    throw v0

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_9b  #00000001
        :pswitch_99  #00000002
        :pswitch_9b  #00000003
        :pswitch_94  #00000004
        :pswitch_91  #00000005
        :pswitch_9b  #00000006
        :pswitch_8e  #00000007
        :pswitch_9b  #00000008
        :pswitch_8b  #00000009
        :pswitch_9b  #0000000a
        :pswitch_88  #0000000b
        :pswitch_9b  #0000000c
        :pswitch_85  #0000000d
        :pswitch_9b  #0000000e
    .end packed-switch
.end method

.method public static b([Ljava/lang/String;)[B
    .registers 13

    const/4 v0, 0x7

    if-eqz p0, :cond_c4

    array-length v1, p0

    const/4 v2, 0x0

    if-lez v1, :cond_59

    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    aget-object v1, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_50

    invoke-static {p0}, Lg6/a;->c([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "strings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_23
    if-ge v1, v0, :cond_2f

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2f
    new-array v0, v3, [B

    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_34
    if-ge v3, v1, :cond_4f

    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move v7, v2

    :goto_3d
    if-ge v7, v6, :cond_4c

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_3d

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_4f
    return-object v0

    :cond_50
    const v3, 0xffff

    if-ne v1, v3, :cond_59

    invoke-static {p0}, Lg6/a;->c([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :cond_59
    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_5c
    if-ge v3, v1, :cond_68

    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_68
    new-array v1, v4, [B

    array-length v3, p0

    move v5, v2

    move v6, v5

    :goto_6d
    if-ge v5, v3, :cond_88

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v9, v2

    :goto_76
    if-ge v9, v8, :cond_85

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v1, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_76

    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    :cond_88
    move p0, v2

    :goto_89
    if-ge p0, v4, :cond_97

    aget-byte v3, v1, p0

    add-int/lit8 v3, v3, 0x7f

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_89

    :cond_97
    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x8

    new-array p0, v4, [B

    move v0, v2

    move v3, v0

    move v5, v3

    :goto_9f
    if-ge v0, v4, :cond_c3

    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    ushr-int/2addr v6, v5

    const/4 v7, 0x1

    add-int/2addr v3, v7

    aget-byte v8, v1, v3

    add-int/lit8 v9, v5, 0x1

    shl-int v10, v7, v9

    sub-int/2addr v10, v7

    and-int v7, v8, v10

    rsub-int/lit8 v8, v5, 0x7

    shl-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p0, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_bf

    add-int/lit8 v3, v3, 0x1

    move v5, v2

    goto :goto_c0

    :cond_bf
    move v5, v9

    :goto_c0
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    :cond_c3
    return-object p0

    :cond_c4
    invoke-static {v0}, Lg6/a;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    return-object p0
.end method
