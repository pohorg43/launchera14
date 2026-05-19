.class public Lcom/oplus/log/util/String2IntUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final key:I = 0x11


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toInt(Ljava/lang/String;)[I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_16

    aget-byte v3, p0, v2

    xor-int/lit8 v3, v3, 0x11

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    return-object v1
.end method

.method public static varargs tostring([[I)Ljava/lang/String;
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

    invoke-static {v5}, Lcom/oplus/log/util/String2IntUtil;->xor([I)[B

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
