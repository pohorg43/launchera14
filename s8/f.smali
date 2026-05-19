.class public final Ls8/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls8/f$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x19

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Ls8/f;->a:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Ls8/f;->b:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1000
        0x2400
        0x5400
        0x8c00
        0xac00
        0xd000
        0xf800
        0x12400
        0x15400
        0x16e00
        0x18a00
        0x19900
        0x1a100
        0x1a980
        0x1bb80
        0x1c500
        0x1cf00
        0x1d440
        0x1d9c0
        0x1dca0
    .end array-data

    :array_48
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0xa
        0xa
        0xb
        0xb
        0xa
        0xa
        0xa
        0xa
        0xa
        0x9
        0x9
        0x8
        0x7
        0x7
        0x8
        0x7
        0x7
        0x6
        0x6
        0x5
        0x5
    .end array-data
.end method
