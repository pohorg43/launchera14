.class public final Lb8/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x7e

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x20

    if-gt v1, v2, :cond_10

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    const/16 v1, 0x9

    const/4 v3, 0x3

    aput-byte v3, v0, v1

    const/16 v4, 0xa

    aput-byte v3, v0, v4

    const/16 v4, 0xd

    aput-byte v3, v0, v4

    aput-byte v3, v0, v2

    const/16 v2, 0x2c

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    const/16 v2, 0x7d

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    const/16 v2, 0x5b

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/16 v2, 0x5d

    aput-byte v1, v0, v2

    const/16 v1, 0x22

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    sput-object v0, Lb8/i;->a:[B

    return-void
.end method

.method public static final a(C)B
    .registers 2

    const/16 v0, 0x7e

    if-ge p0, v0, :cond_9

    sget-object v0, Lb8/i;->a:[B

    aget-byte p0, v0, p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method
