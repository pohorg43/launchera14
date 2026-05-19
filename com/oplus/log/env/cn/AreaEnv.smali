.class public Lcom/oplus/log/env/cn/AreaEnv;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final _cn:[I

.field private static final _usertrace:[I

.field private static final com:[I

.field private static final heytapmobi:[I

.field private static final https:[I

.field private static final key:I = 0x11

.field private static final mdp:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/oplus/log/env/cn/AreaEnv;->https:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_48

    sput-object v1, Lcom/oplus/log/env/cn/AreaEnv;->mdp:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_52

    sput-object v1, Lcom/oplus/log/env/cn/AreaEnv;->_usertrace:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/oplus/log/env/cn/AreaEnv;->_cn:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_74

    sput-object v0, Lcom/oplus/log/env/cn/AreaEnv;->heytapmobi:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_8e

    sput-object v0, Lcom/oplus/log/env/cn/AreaEnv;->com:[I

    return-void

    nop

    :array_34
    .array-data 4
        0x79
        0x65
        0x65
        0x61
        0x62
        0x2b
        0x3e
        0x3e
    .end array-data

    :array_48
    .array-data 4
        0x7c
        0x75
        0x61
    .end array-data

    :array_52
    .array-data 4
        0x3c
        0x64
        0x62
        0x74
        0x63
        0x65
        0x63
        0x70
        0x72
        0x74
    .end array-data

    :array_6a
    .array-data 4
        0x3c
        0x72
        0x7f
    .end array-data

    :array_74
    .array-data 4
        0x3f
        0x79
        0x74
        0x68
        0x65
        0x70
        0x61
        0x7c
        0x7e
        0x73
        0x78
    .end array-data

    :array_8e
    .array-data 4
        0x3f
        0x72
        0x7e
        0x7c
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHost()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [[I

    sget-object v1, Lcom/oplus/log/env/cn/AreaEnv;->https:[I

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/log/env/cn/AreaEnv;->mdp:[I

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/log/env/cn/AreaEnv;->_usertrace:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/log/env/cn/AreaEnv;->_cn:[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/log/env/cn/AreaEnv;->heytapmobi:[I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/log/env/cn/AreaEnv;->com:[I

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/oplus/log/env/cn/AreaEnv;->tostring([[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs tostring([[I)Ljava/lang/String;
    .registers 8

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_d

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    new-array v2, v3, [B

    move v3, v1

    move v4, v3

    :goto_11
    if-ge v3, v0, :cond_26

    aget-object v5, p0, v3

    invoke-static {v5}, Lcom/oplus/log/env/cn/AreaEnv;->xor([I)[B

    move-result-object v5

    aget-object v6, p0, v3

    array-length v6, v6

    invoke-static {v5, v1, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p0, v3

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method private static xor([I)[B
    .registers 5

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_10

    aget v3, p0, v2

    xor-int/lit8 v3, v3, 0x11

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-object v1
.end method
