.class public final Lc2/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a([B[BI)S
    .registers 5

    div-int/lit8 v0, p2, 0x8

    rem-int/lit8 v1, p2, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    aget-byte p0, p0, v0

    sget-object p2, Lc2/e;->a:[I

    aget p2, p2, v1

    and-int/2addr p0, p2

    if-eqz p0, :cond_15

    or-int/lit16 p0, p1, 0x100

    int-to-short p1, p0

    :cond_15
    return p1
.end method

.method public static b(C)I
    .registers 4

    add-int/lit16 p0, p0, -0x4e00

    const/16 v0, 0x1b58

    if-ltz p0, :cond_11

    if-ge p0, v0, :cond_11

    sget-object v0, Lc2/b;->a:[B

    sget-object v1, Lc2/b;->b:[B

    invoke-static {v0, v1, p0}, Lc2/a;->a([B[BI)S

    move-result p0

    return p0

    :cond_11
    const/16 v1, 0x36b0

    if-gt v0, p0, :cond_21

    if-ge p0, v1, :cond_21

    sget-object v1, Lc2/c;->a:[B

    sget-object v2, Lc2/c;->b:[B

    sub-int/2addr p0, v0

    invoke-static {v1, v2, p0}, Lc2/a;->a([B[BI)S

    move-result p0

    return p0

    :cond_21
    sget-object v0, Lc2/d;->a:[B

    sget-object v2, Lc2/d;->b:[B

    sub-int/2addr p0, v1

    invoke-static {v0, v2, p0}, Lc2/a;->a([B[BI)S

    move-result p0

    return p0
.end method
