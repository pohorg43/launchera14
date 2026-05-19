.class public final Lokio/-Base64;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "-Base64"
.end annotation


# static fields
.field private static final BASE64:[B

.field private static final BASE64_URL_SAFE:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    sput-object v1, Lokio/-Base64;->BASE64:[B

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-void
.end method

.method public static final decodeBase64ToArray(Ljava/lang/String;)[B
    .registers 17

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_b
    const/16 v2, 0x9

    const/16 v3, 0x20

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-lez v1, :cond_2b

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_28

    if-eq v6, v5, :cond_28

    if-eq v6, v4, :cond_28

    if-eq v6, v3, :cond_28

    if-eq v6, v2, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_2b
    :goto_2b
    int-to-long v6, v1

    const-wide/16 v8, 0x6

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    long-to-int v6, v6

    new-array v7, v6, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_39
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ge v9, v1, :cond_b2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v8, 0x41

    if-gt v8, v15, :cond_4b

    const/16 v8, 0x5b

    if-ge v15, v8, :cond_4b

    move v8, v14

    goto :goto_4c

    :cond_4b
    const/4 v8, 0x0

    :goto_4c
    if-eqz v8, :cond_51

    add-int/lit8 v15, v15, -0x41

    goto :goto_91

    :cond_51
    const/16 v8, 0x61

    if-gt v8, v15, :cond_5b

    const/16 v8, 0x7b

    if-ge v15, v8, :cond_5b

    move v8, v14

    goto :goto_5c

    :cond_5b
    const/4 v8, 0x0

    :goto_5c
    if-eqz v8, :cond_61

    add-int/lit8 v15, v15, -0x47

    goto :goto_91

    :cond_61
    const/16 v8, 0x30

    if-gt v8, v15, :cond_6a

    const/16 v8, 0x3a

    if-ge v15, v8, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v14, 0x0

    :goto_6b
    if-eqz v14, :cond_70

    add-int/lit8 v15, v15, 0x4

    goto :goto_91

    :cond_70
    const/16 v8, 0x2b

    if-eq v15, v8, :cond_8f

    const/16 v8, 0x2d

    if-ne v15, v8, :cond_79

    goto :goto_8f

    :cond_79
    const/16 v8, 0x2f

    if-eq v15, v8, :cond_8c

    const/16 v8, 0x5f

    if-ne v15, v8, :cond_82

    goto :goto_8c

    :cond_82
    if-eq v15, v5, :cond_af

    if-eq v15, v4, :cond_af

    if-eq v15, v3, :cond_af

    if-ne v15, v2, :cond_8b

    goto :goto_af

    :cond_8b
    return-object v13

    :cond_8c
    :goto_8c
    const/16 v15, 0x3f

    goto :goto_91

    :cond_8f
    :goto_8f
    const/16 v15, 0x3e

    :goto_91
    shl-int/lit8 v8, v11, 0x6

    or-int v11, v8, v15

    add-int/lit8 v10, v10, 0x1

    rem-int/lit8 v8, v10, 0x4

    if-nez v8, :cond_af

    add-int/lit8 v8, v12, 0x1

    shr-int/lit8 v13, v11, 0x10

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    add-int/lit8 v12, v8, 0x1

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    aput-byte v13, v7, v8

    add-int/lit8 v8, v12, 0x1

    int-to-byte v13, v11

    aput-byte v13, v7, v12

    move v12, v8

    :cond_af
    :goto_af
    add-int/lit8 v9, v9, 0x1

    goto :goto_39

    :cond_b2
    rem-int/lit8 v10, v10, 0x4

    if-eq v10, v14, :cond_e5

    const/4 v0, 0x2

    if-eq v10, v0, :cond_ce

    const/4 v0, 0x3

    if-eq v10, v0, :cond_bd

    goto :goto_d8

    :cond_bd
    shl-int/lit8 v0, v11, 0x6

    add-int/lit8 v1, v12, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v7, v12

    add-int/lit8 v12, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v7, v1

    goto :goto_d8

    :cond_ce
    shl-int/lit8 v0, v11, 0xc

    add-int/lit8 v1, v12, 0x1

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, v7, v12

    move v12, v1

    :goto_d8
    if-ne v12, v6, :cond_db

    return-object v7

    :cond_db
    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_e5
    return-object v13
.end method

.method public static final encodeBase64([B[B)Ljava/lang/String;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    array-length v2, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v3, v2, :cond_58

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v9, v3, 0xff

    shr-int/2addr v9, v1

    aget-byte v9, p1, v9

    aput-byte v9, v0, v4

    add-int/lit8 v4, v8, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v9, v5, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v3, v9

    aget-byte v3, p1, v3

    aput-byte v3, v0, v8

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v1

    and-int/lit16 v8, v6, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v6, 0x3f

    aget-byte v5, p1, v5

    aput-byte v5, v0, v3

    move v3, v7

    goto :goto_1a

    :cond_58
    array-length v5, p0

    sub-int/2addr v5, v2

    const/16 v2, 0x3d

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8c

    if-eq v5, v1, :cond_62

    goto :goto_a8

    :cond_62
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    aget-byte p0, p0, v5

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v6, v3, 0xff

    shr-int/2addr v6, v1

    aget-byte v6, p1, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v6, p0, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v3, v6

    aget-byte v3, p1, v3

    aput-byte v3, v0, v5

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v1

    aget-byte p0, p1, p0

    aput-byte p0, v0, v4

    aput-byte v2, v0, v3

    goto :goto_a8

    :cond_8c
    aget-byte p0, p0, v3

    add-int/lit8 v3, v4, 0x1

    and-int/lit16 v5, p0, 0xff

    shr-int/lit8 v1, v5, 0x2

    aget-byte v1, p1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v1, v3, 0x1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, p1, p0

    aput-byte p0, v0, v3

    add-int/lit8 p0, v1, 0x1

    aput-byte v2, v0, v1

    aput-byte v2, v0, p0

    :goto_a8
    invoke-static {v0}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    sget-object p1, Lokio/-Base64;->BASE64:[B

    :cond_6
    invoke-static {p0, p1}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getBASE64()[B
    .registers 1

    sget-object v0, Lokio/-Base64;->BASE64:[B

    return-object v0
.end method

.method public static synthetic getBASE64$annotations()V
    .registers 0

    return-void
.end method

.method public static final getBASE64_URL_SAFE()[B
    .registers 1

    sget-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-object v0
.end method

.method public static synthetic getBASE64_URL_SAFE$annotations()V
    .registers 0

    return-void
.end method
