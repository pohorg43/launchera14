.class public final Lcom/oplus/glcomponent/math/MathUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/math/MathUtils$Sin;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0006\n\u0002\b2\n\u0002\u0018\u0002\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001`B\t\b\u0002¢\u0006\u0004\b^\u0010_J\u0018\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0007J\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006J\u0016\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0006J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0006J\u0006\u0010\u0015\u001a\u00020\u0002J\u0006\u0010\u0016\u001a\u00020\u0006J\u000e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006J\"\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006H\u0007J\u000e\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002J\u000e\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0002J\u001e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u001dJ\u001e\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0002J\u001e\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011J\u001e\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006J\u001e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u001f2\u0006\u0010\u0017\u001a\u00020\u001fJ\u001e\u0010#\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006J\u001e\u0010&\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006J\u001e\u0010)\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006J\u000e\u0010*\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u0010+\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u0010,\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u0010-\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u0010.\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u0010/\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u00100\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0006J\u0016\u00100\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006J\u0016\u00104\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u0006J\u001e\u00104\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006J\u0016\u00105\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u00106\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006J.\u0010;\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00062\u0006\u0010:\u001a\u00020\u0006J\u001e\u0010?\u001a\u00020\u00062\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u0006R\u0016\u0010@\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010B\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\bB\u0010AR\u0016\u0010C\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\bC\u0010AR\u0016\u0010D\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\bD\u0010AR\u0016\u0010E\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\bE\u0010AR\u0016\u0010F\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010H\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bH\u0010GR\u0016\u0010I\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bI\u0010GR\u0016\u0010J\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bJ\u0010AR\u0016\u0010K\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bK\u0010AR\u0016\u0010L\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bL\u0010AR\u0016\u0010M\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bM\u0010AR\u0016\u0010N\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\bN\u0010AR\u0016\u0010O\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\bO\u0010AR\u0016\u0010P\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\bP\u0010AR\u0016\u0010Q\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\bQ\u0010AR\"\u0010\u0005\u001a\u00020R8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\u0016\u0010X\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bX\u0010GR\u0016\u0010Y\u001a\u00020\u001f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bY\u0010ZR\u0016\u0010[\u001a\u00020\u001f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b[\u0010ZR\u0016\u0010\\\u001a\u00020\u001f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\\\u0010ZR\u0016\u0010]\u001a\u00020\u001f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b]\u0010Z¨\u0006a"
    }
    d2 = {
        "Lcom/oplus/glcomponent/math/MathUtils;",
        "",
        "",
        "start",
        "end",
        "random",
        "",
        "radians",
        "sin",
        "cos",
        "degrees",
        "sinDeg",
        "cosDeg",
        "y",
        "x",
        "atan2",
        "range",
        "",
        "",
        "randomBoolean",
        "chance",
        "randomSign",
        "randomTriangular",
        "max",
        "min",
        "mode",
        "value",
        "nextPowerOfTwo",
        "isPowerOfTwo",
        "",
        "clamp",
        "",
        "fromValue",
        "toValue",
        "progress",
        "lerp",
        "fromRadians",
        "toRadians",
        "lerpAngle",
        "fromDegrees",
        "toDegrees",
        "lerpAngleDeg",
        "floor",
        "floorPositive",
        "ceil",
        "ceilPositive",
        "round",
        "roundPositive",
        "isZero",
        "tolerance",
        "a",
        "b",
        "isEqual",
        "log",
        "log2",
        "oldMin",
        "oldMax",
        "newMin",
        "newMax",
        "map",
        "var0",
        "var1",
        "var2",
        "mix",
        "nanoToSec",
        "F",
        "FLOAT_ROUNDING_ERROR",
        "PI",
        "PI2",
        "E",
        "SIN_BITS",
        "I",
        "SIN_MASK",
        "SIN_COUNT",
        "radFull",
        "degFull",
        "radToIndex",
        "degToIndex",
        "radiansToDegrees",
        "radDeg",
        "degreesToRadians",
        "degRad",
        "Ljava/util/Random;",
        "Ljava/util/Random;",
        "getRandom",
        "()Ljava/util/Random;",
        "setRandom",
        "(Ljava/util/Random;)V",
        "BIG_ENOUGH_INT",
        "BIG_ENOUGH_FLOOR",
        "D",
        "CEIL",
        "BIG_ENOUGH_CEIL",
        "BIG_ENOUGH_ROUND",
        "<init>",
        "()V",
        "Sin",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final BIG_ENOUGH_CEIL:D = 16384.999999999996

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5

.field private static final CEIL:D = 0.9999999

.field public static final E:F = 2.7182817f

.field public static final FLOAT_ROUNDING_ERROR:F = 1.0E-6f

.field public static final INSTANCE:Lcom/oplus/glcomponent/math/MathUtils;

.field public static final PI:F = 3.1415927f

.field public static final PI2:F = 6.2831855f

.field private static final SIN_BITS:I = 0xe

.field private static final SIN_COUNT:I = 0x4000

.field private static final SIN_MASK:I = 0x3fff

.field private static final degFull:F = 360.0f

.field public static final degRad:F = 0.017453292f

.field private static final degToIndex:F = 45.511112f

.field public static final degreesToRadians:F = 0.017453292f

.field public static final nanoToSec:F = 1.0E-9f

.field public static final radDeg:F = 57.295776f

.field private static final radFull:F = 6.2831855f

.field private static final radToIndex:F = 2607.5945f

.field public static final radiansToDegrees:F = 57.295776f

.field private static random:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/glcomponent/math/MathUtils;

    invoke-direct {v0}, Lcom/oplus/glcomponent/math/MathUtils;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/math/MathUtils;->INSTANCE:Lcom/oplus/glcomponent/math/MathUtils;

    new-instance v0, Lcom/oplus/glcomponent/math/RandomXS128;

    invoke-direct {v0}, Lcom/oplus/glcomponent/math/RandomXS128;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final random(II)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static synthetic randomTriangular$default(Lcom/oplus/glcomponent/math/MathUtils;FFFILjava/lang/Object;)F
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_9

    add-float p3, p1, p2

    const/high16 p4, 0x3f000000  # 0.5f

    mul-float/2addr p3, p4

    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/glcomponent/math/MathUtils;->randomTriangular(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final atan2(FF)F
    .registers 9

    const/4 p0, 0x0

    cmpg-float v0, p2, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    move v3, v1

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    const v4, 0x3fc90fdb

    if-eqz v3, :cond_21

    cmpl-float p2, p1, p0

    if-lez p2, :cond_14

    return v4

    :cond_14
    cmpg-float p1, p1, p0

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    if-eqz v1, :cond_1d

    goto :goto_20

    :cond_1d
    const p0, -0x4036f025

    :goto_20
    return p0

    :cond_21
    div-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v1, v1, v2

    const v3, 0x40490fdb  # (float)Math.PI

    const v5, 0x3e8f5c29  # 0.28f

    if-gez v1, :cond_42

    mul-float/2addr v5, p2

    mul-float/2addr v5, p2

    add-float/2addr v5, v2

    div-float/2addr p2, v5

    if-gez v0, :cond_41

    cmpg-float p0, p1, p0

    if-gez p0, :cond_40

    const v3, -0x3fb6f025

    :cond_40
    add-float/2addr p2, v3

    :cond_41
    return p2

    :cond_42
    mul-float v0, p2, p2

    add-float/2addr v0, v5

    div-float/2addr p2, v0

    sub-float/2addr v4, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4c

    sub-float/2addr v4, v3

    :cond_4c
    return v4
.end method

.method public final ceil(F)I
    .registers 4

    float-to-double p0, p1

    const-wide/high16 v0, 0x40d0000000000000L  # 16384.0

    sub-double/2addr v0, p0

    double-to-int p0, v0

    rsub-int p0, p0, 0x4000

    return p0
.end method

.method public final ceilPositive(F)I
    .registers 4

    float-to-double p0, p1

    const-wide v0, 0x3fefffffca501acbL  # 0.9999999

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public final clamp(DDD)D
    .registers 7

    cmpg-double p0, p1, p3

    if-gez p0, :cond_5

    return-wide p3

    :cond_5
    cmpl-double p0, p1, p5

    if-lez p0, :cond_a

    move-wide p1, p5

    :cond_a
    return-wide p1
.end method

.method public final clamp(FFF)F
    .registers 4

    cmpg-float p0, p1, p2

    if-gez p0, :cond_5

    return p2

    :cond_5
    cmpl-float p0, p1, p3

    if-lez p0, :cond_a

    move p1, p3

    :cond_a
    return p1
.end method

.method public final clamp(III)I
    .registers 4

    if-ge p1, p2, :cond_3

    return p2

    :cond_3
    if-le p1, p3, :cond_6

    move p1, p3

    :cond_6
    return p1
.end method

.method public final clamp(JJJ)J
    .registers 7

    cmp-long p0, p1, p3

    if-gez p0, :cond_5

    return-wide p3

    :cond_5
    cmp-long p0, p1, p5

    if-lez p0, :cond_a

    move-wide p1, p5

    :cond_a
    return-wide p1
.end method

.method public final clamp(SSS)S
    .registers 4

    if-ge p1, p2, :cond_3

    return p2

    :cond_3
    if-le p1, p3, :cond_6

    move p1, p3

    :cond_6
    return p1
.end method

.method public final cos(F)F
    .registers 3

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils$Sin;->INSTANCE:Lcom/oplus/glcomponent/math/MathUtils$Sin;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/math/MathUtils$Sin;->getTable()[F

    move-result-object p0

    const v0, 0x3fc90fdb

    add-float/2addr p1, v0

    const v0, 0x4522f983

    mul-float/2addr p1, v0

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0x3fff

    aget p0, p0, p1

    return p0
.end method

.method public final cosDeg(F)F
    .registers 3

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils$Sin;->INSTANCE:Lcom/oplus/glcomponent/math/MathUtils$Sin;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/math/MathUtils$Sin;->getTable()[F

    move-result-object p0

    const/16 v0, 0x5a

    int-to-float v0, v0

    add-float/2addr p1, v0

    const v0, 0x42360b61

    mul-float/2addr p1, v0

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0x3fff

    aget p0, p0, p1

    return p0
.end method

.method public final floor(F)I
    .registers 4

    float-to-double p0, p1

    const-wide/high16 v0, 0x40d0000000000000L  # 16384.0

    add-double/2addr p0, v0

    double-to-int p0, p0

    add-int/lit16 p0, p0, -0x4000

    return p0
.end method

.method public final floorPositive(F)I
    .registers 2

    float-to-int p0, p1

    return p0
.end method

.method public final getRandom()Ljava/util/Random;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    return-object p0
.end method

.method public final isEqual(FF)Z
    .registers 3

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd  # 1.0E-6f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isEqual(FFF)Z
    .registers 4

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final isPowerOfTwo(I)Z
    .registers 2

    if-eqz p1, :cond_9

    add-int/lit8 p0, p1, -0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final isZero(F)Z
    .registers 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd  # 1.0E-6f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final isZero(FF)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final lerp(FFF)F
    .registers 4

    invoke-static {p2, p1, p3, p1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public final lerpAngle(FFF)F
    .registers 5

    sub-float/2addr p2, p1

    const p0, 0x40c90fdb

    add-float/2addr p2, p0

    const v0, 0x40490fdb  # (float)Math.PI

    add-float/2addr p2, v0

    rem-float/2addr p2, p0

    sub-float/2addr p2, v0

    mul-float/2addr p2, p3

    add-float/2addr p2, p1

    add-float/2addr p2, p0

    rem-float/2addr p2, p0

    return p2
.end method

.method public final lerpAngleDeg(FFF)F
    .registers 5

    sub-float/2addr p2, p1

    const/16 p0, 0x168

    int-to-float p0, p0

    add-float/2addr p2, p0

    const/16 v0, 0xb4

    int-to-float v0, v0

    add-float/2addr p2, v0

    rem-float/2addr p2, p0

    sub-float/2addr p2, v0

    mul-float/2addr p2, p3

    add-float/2addr p2, p1

    add-float/2addr p2, p0

    rem-float/2addr p2, p0

    return p2
.end method

.method public final log(FF)F
    .registers 5

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public final log2(F)F
    .registers 3

    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p0, v0, p1}, Lcom/oplus/glcomponent/math/MathUtils;->log(FF)F

    move-result p0

    return p0
.end method

.method public final map(FFFFF)F
    .registers 6

    sub-float/2addr p5, p4

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    mul-float/2addr p1, p5

    add-float/2addr p1, p4

    return p1
.end method

.method public final mix(FFF)F
    .registers 4

    const/4 p0, 0x0

    cmpg-float p0, p3, p0

    if-gez p0, :cond_6

    goto :goto_12

    :cond_6
    const/high16 p0, 0x3f800000  # 1.0f

    cmpl-float p0, p3, p0

    if-lez p0, :cond_e

    move p1, p2

    goto :goto_12

    :cond_e
    invoke-static {p2, p1, p3, p1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    :goto_12
    return p1
.end method

.method public final nextPowerOfTwo(I)I
    .registers 3

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    :cond_4
    add-int/lit8 p1, p1, -0x1

    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public final random()F
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    return p0
.end method

.method public final random(F)F
    .registers 2

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final random(FF)F
    .registers 3

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    invoke-static {p2, p1, p0, p1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public final random(I)I
    .registers 2

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public final random(J)J
    .registers 5

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    long-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-long p0, v0

    return-wide p0
.end method

.method public final random(JJ)J
    .registers 7

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    sub-long/2addr p3, p1

    long-to-double p3, p3

    mul-double/2addr v0, p3

    double-to-long p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public final randomBoolean()Z
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextBoolean()Z

    move-result p0

    return p0
.end method

.method public final randomBoolean(F)Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/glcomponent/math/MathUtils;->random()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final randomSign()I
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    shr-int/lit8 p0, p0, 0x1f

    or-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final randomTriangular()F
    .registers 2

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    sget-object v0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr p0, v0

    return p0
.end method

.method public final randomTriangular(F)F
    .registers 3

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    sget-object v0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final randomTriangular(FF)F
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/oplus/glcomponent/math/MathUtils;->randomTriangular$default(Lcom/oplus/glcomponent/math/MathUtils;FFFILjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final randomTriangular(FFF)F
    .registers 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    sub-float v0, p2, p1

    sub-float v1, p3, p1

    div-float v2, v1, v0

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_1b

    mul-float/2addr p0, v0

    float-to-double p2, p0

    float-to-double v0, v1

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p0, p2

    add-float/2addr p1, p0

    goto :goto_2b

    :cond_1b
    const/4 p1, 0x1

    int-to-float p1, p1

    sub-float/2addr p1, p0

    mul-float/2addr p1, v0

    float-to-double p0, p1

    sub-float p3, p2, p3

    float-to-double v0, p3

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    sub-float p1, p2, p0

    :goto_2b
    return p1
.end method

.method public final round(F)I
    .registers 4

    float-to-double p0, p1

    const-wide v0, 0x40d0002000000000L  # 16384.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    add-int/lit16 p0, p0, -0x4000

    return p0
.end method

.method public final roundPositive(F)I
    .registers 2

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final setRandom(Ljava/util/Random;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/glcomponent/math/MathUtils;->random:Ljava/util/Random;

    return-void
.end method

.method public final sin(F)F
    .registers 3

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils$Sin;->INSTANCE:Lcom/oplus/glcomponent/math/MathUtils$Sin;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/math/MathUtils$Sin;->getTable()[F

    move-result-object p0

    const v0, 0x4522f983

    mul-float/2addr p1, v0

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0x3fff

    aget p0, p0, p1

    return p0
.end method

.method public final sinDeg(F)F
    .registers 3

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils$Sin;->INSTANCE:Lcom/oplus/glcomponent/math/MathUtils$Sin;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/math/MathUtils$Sin;->getTable()[F

    move-result-object p0

    const v0, 0x42360b61

    mul-float/2addr p1, v0

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0x3fff

    aget p0, p0, p1

    return p0
.end method
