.class public final Lcom/oplus/glcomponent/math/RandomXS128$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/math/RandomXS128;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007¨\u0006\u000b"
    }
    d2 = {
        "Lcom/oplus/glcomponent/math/RandomXS128$Companion;",
        "",
        "",
        "x",
        "murmurHash3",
        "",
        "NORM_DOUBLE",
        "D",
        "NORM_FLOAT",
        "<init>",
        "()V",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/glcomponent/math/RandomXS128$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$murmurHash3(Lcom/oplus/glcomponent/math/RandomXS128$Companion;J)J
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/glcomponent/math/RandomXS128$Companion;->murmurHash3(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private final murmurHash3(J)J
    .registers 5

    const/16 p0, 0x21

    ushr-long v0, p1, p0

    xor-long/2addr p1, v0

    const-wide v0, -0xae502812aa7333L

    mul-long/2addr p1, v0

    ushr-long v0, p1, p0

    xor-long/2addr p1, v0

    const-wide v0, -0x3b314601e57a13adL  # -2.902039044684214E23

    mul-long/2addr p1, v0

    ushr-long v0, p1, p0

    xor-long p0, p1, v0

    return-wide p0
.end method
