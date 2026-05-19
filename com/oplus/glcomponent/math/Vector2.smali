.class public final Lcom/oplus/glcomponent/math/Vector2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/math/Vector2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u001c\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\t\b\u0016¢\u0006\u0004\b\u0019\u0010\u001aB\u0019\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001bB\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0000¢\u0006\u0004\b\u0019\u0010\u001cJ\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000J\u0016\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0000J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000J\u0016\u0010\u000b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0002J\u0006\u0010\u000e\u001a\u00020\u0002J\u0006\u0010\u000f\u001a\u00020\u0002J\u0006\u0010\u0010\u001a\u00020\u0000J\u0016\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0002J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0014\u001a\u00020\u0002J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0002J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0018R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0018¨\u0006\u001e"
    }
    d2 = {
        "Lcom/oplus/glcomponent/math/Vector2;",
        "",
        "",
        "radians",
        "rotateRad",
        "v",
        "sub",
        "add",
        "x",
        "y",
        "cpy",
        "set",
        "scalar",
        "scl",
        "len2",
        "len",
        "nor",
        "target",
        "alpha",
        "lerp",
        "degrees",
        "rotate",
        "setAngle",
        "setAngleRad",
        "F",
        "<init>",
        "()V",
        "(FF)V",
        "(Lcom/oplus/glcomponent/math/Vector2;)V",
        "Companion",
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
.field public static final Companion:Lcom/oplus/glcomponent/math/Vector2$Companion;

.field private static final X:Lcom/oplus/glcomponent/math/Vector2;

.field private static final Y:Lcom/oplus/glcomponent/math/Vector2;

.field private static final Zero:Lcom/oplus/glcomponent/math/Vector2;


# instance fields
.field public x:F
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public y:F
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/glcomponent/math/Vector2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/math/Vector2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/glcomponent/math/Vector2;->Companion:Lcom/oplus/glcomponent/math/Vector2$Companion;

    new-instance v0, Lcom/oplus/glcomponent/math/Vector2;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/glcomponent/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/oplus/glcomponent/math/Vector2;->X:Lcom/oplus/glcomponent/math/Vector2;

    new-instance v0, Lcom/oplus/glcomponent/math/Vector2;

    invoke-direct {v0, v2, v1}, Lcom/oplus/glcomponent/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/oplus/glcomponent/math/Vector2;->Y:Lcom/oplus/glcomponent/math/Vector2;

    new-instance v0, Lcom/oplus/glcomponent/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/oplus/glcomponent/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/oplus/glcomponent/math/Vector2;->Zero:Lcom/oplus/glcomponent/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iput p2, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/math/Vector2;)V
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/oplus/glcomponent/math/Vector2;->set(Lcom/oplus/glcomponent/math/Vector2;)Lcom/oplus/glcomponent/math/Vector2;

    return-void
.end method

.method public static final synthetic access$getX$cp()Lcom/oplus/glcomponent/math/Vector2;
    .registers 1

    sget-object v0, Lcom/oplus/glcomponent/math/Vector2;->X:Lcom/oplus/glcomponent/math/Vector2;

    return-object v0
.end method

.method public static final synthetic access$getY$cp()Lcom/oplus/glcomponent/math/Vector2;
    .registers 1

    sget-object v0, Lcom/oplus/glcomponent/math/Vector2;->Y:Lcom/oplus/glcomponent/math/Vector2;

    return-object v0
.end method

.method public static final synthetic access$getZero$cp()Lcom/oplus/glcomponent/math/Vector2;
    .registers 1

    sget-object v0, Lcom/oplus/glcomponent/math/Vector2;->Zero:Lcom/oplus/glcomponent/math/Vector2;

    return-object v0
.end method

.method private final rotateRad(F)Lcom/oplus/glcomponent/math/Vector2;
    .registers 7

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    mul-float v2, v1, p1

    iget v3, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    mul-float v4, v3, v0

    sub-float/2addr v2, v4

    mul-float/2addr v1, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v1

    iput v2, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iput v3, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    return-object p0
.end method


# virtual methods
.method public final add(FF)Lcom/oplus/glcomponent/math/Vector2;
    .registers 4

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iget p1, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    return-object p0
.end method

.method public final add(Lcom/oplus/glcomponent/math/Vector2;)Lcom/oplus/glcomponent/math/Vector2;
    .registers 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iget v1, p1, Lcom/oplus/glcomponent/math/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    iget p1, p1, Lcom/oplus/glcomponent/math/Vector2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    return-object p0
.end method

.method public final cpy()Lcom/oplus/glcomponent/math/Vector2;
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/math/Vector2;

    invoke-direct {v0, p0}, Lcom/oplus/glcomponent/math/Vector2;-><init>(Lcom/oplus/glcomponent/math/Vector2;)V

    return-object v0
.end method

.method public final len()F
    .registers 7

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    mul-float/2addr v0, v0

    float-to-double v0, v0

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    float-to-double v2, p0

    float-to-double v4, p0

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final len2()F
    .registers 2

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    mul-float/2addr v0, v0

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    mul-float/2addr p0, p0

    add-float/2addr p0, v0

    return p0
.end method

.method public final lerp(Lcom/oplus/glcomponent/math/Vector2;F)Lcom/oplus/glcomponent/math/Vector2;
    .registers 6

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/oplus/glcomponent/math/Vector2;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iget v1, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    mul-float/2addr v1, v0

    iget p1, p1, Lcom/oplus/glcomponent/math/Vector2;->y:F

    mul-float/2addr p1, p2

    add-float/2addr p1, v1

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    return-object p0
.end method

.method public final nor()Lcom/oplus/glcomponent/math/Vector2;
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/glcomponent/math/Vector2;->len()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-nez v1, :cond_18

    iget v1, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iget v1, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    :cond_18
    return-object p0
.end method

.method public final rotate(F)Lcom/oplus/glcomponent/math/Vector2;
    .registers 3

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/math/Vector2;->rotateRad(F)Lcom/oplus/glcomponent/math/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public final scl(F)Lcom/oplus/glcomponent/math/Vector2;
    .registers 3

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    return-object p0
.end method

.method public final set(FF)Lcom/oplus/glcomponent/math/Vector2;
    .registers 3

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iput p2, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    return-object p0
.end method

.method public final set(Lcom/oplus/glcomponent/math/Vector2;)Lcom/oplus/glcomponent/math/Vector2;
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iget p1, p1, Lcom/oplus/glcomponent/math/Vector2;->y:F

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    return-object p0
.end method

.method public final setAngle(F)Lcom/oplus/glcomponent/math/Vector2;
    .registers 3

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/oplus/glcomponent/math/Vector2;->setAngleRad(F)Lcom/oplus/glcomponent/math/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public final setAngleRad(F)Lcom/oplus/glcomponent/math/Vector2;
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/glcomponent/math/Vector2;->len()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/glcomponent/math/Vector2;->set(FF)Lcom/oplus/glcomponent/math/Vector2;

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/math/Vector2;->rotateRad(F)Lcom/oplus/glcomponent/math/Vector2;

    return-object p0
.end method

.method public final sub(Lcom/oplus/glcomponent/math/Vector2;)Lcom/oplus/glcomponent/math/Vector2;
    .registers 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iget v1, p1, Lcom/oplus/glcomponent/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    iget p1, p1, Lcom/oplus/glcomponent/math/Vector2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector2;->y:F

    return-object p0
.end method
