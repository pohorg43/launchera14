.class public final Landroidx/palette/graphics/Target;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/Target$Builder;
    }
.end annotation


# static fields
.field public static final DARK_MUTED:Landroidx/palette/graphics/Target;

.field public static final DARK_VIBRANT:Landroidx/palette/graphics/Target;

.field public static final INDEX_MAX:I = 0x2

.field public static final INDEX_MIN:I = 0x0

.field public static final INDEX_TARGET:I = 0x1

.field public static final INDEX_WEIGHT_LUMA:I = 0x1

.field public static final INDEX_WEIGHT_POP:I = 0x2

.field public static final INDEX_WEIGHT_SAT:I = 0x0

.field public static final LIGHT_MUTED:Landroidx/palette/graphics/Target;

.field public static final LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

.field private static final MAX_DARK_LUMA:F = 0.45f

.field private static final MAX_MUTED_SATURATION:F = 0.4f

.field private static final MAX_NORMAL_LUMA:F = 0.7f

.field private static final MIN_LIGHT_LUMA:F = 0.55f

.field private static final MIN_NORMAL_LUMA:F = 0.3f

.field private static final MIN_VIBRANT_SATURATION:F = 0.35f

.field public static final MUTED:Landroidx/palette/graphics/Target;

.field private static final TARGET_DARK_LUMA:F = 0.26f

.field private static final TARGET_LIGHT_LUMA:F = 0.74f

.field private static final TARGET_MUTED_SATURATION:F = 0.3f

.field private static final TARGET_NORMAL_LUMA:F = 0.5f

.field private static final TARGET_VIBRANT_SATURATION:F = 1.0f

.field public static final VIBRANT:Landroidx/palette/graphics/Target;

.field private static final WEIGHT_LUMA:F = 0.52f

.field private static final WEIGHT_POPULATION:F = 0.24f

.field private static final WEIGHT_SATURATION:F = 0.24f


# instance fields
.field public mIsExclusive:Z

.field public final mLightnessTargets:[F

.field public final mSaturationTargets:[F

.field public final mWeights:[F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultLightLightnessValues(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultVibrantSaturationValues(Landroidx/palette/graphics/Target;)V

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultNormalLightnessValues(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultVibrantSaturationValues(Landroidx/palette/graphics/Target;)V

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultDarkLightnessValues(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultVibrantSaturationValues(Landroidx/palette/graphics/Target;)V

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultLightLightnessValues(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultMutedSaturationValues(Landroidx/palette/graphics/Target;)V

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultNormalLightnessValues(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultMutedSaturationValues(Landroidx/palette/graphics/Target;)V

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultDarkLightnessValues(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultMutedSaturationValues(Landroidx/palette/graphics/Target;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    new-array v2, v0, [F

    iput-object v2, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    invoke-static {v1}, Landroidx/palette/graphics/Target;->setTargetDefaultValues([F)V

    invoke-static {v2}, Landroidx/palette/graphics/Target;->setTargetDefaultValues([F)V

    invoke-direct {p0}, Landroidx/palette/graphics/Target;->setDefaultWeights()V

    return-void
.end method

.method public constructor <init>(Landroidx/palette/graphics/Target;)V
    .registers 7
    .param p1  # Landroidx/palette/graphics/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    new-array v2, v0, [F

    iput-object v2, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    iget-object p0, p1, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {p0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    array-length v1, v2

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length p1, v0

    invoke-static {p0, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static setDefaultDarkLightnessValues(Landroidx/palette/graphics/Target;)V
    .registers 3

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v0, 0x1

    const v1, 0x3e851eb8  # 0.26f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3ee66666  # 0.45f

    aput v1, p0, v0

    return-void
.end method

.method private static setDefaultLightLightnessValues(Landroidx/palette/graphics/Target;)V
    .registers 3

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v0, 0x0

    const v1, 0x3f0ccccd  # 0.55f

    aput v1, p0, v0

    const/4 v0, 0x1

    const v1, 0x3f3d70a4  # 0.74f

    aput v1, p0, v0

    return-void
.end method

.method private static setDefaultMutedSaturationValues(Landroidx/palette/graphics/Target;)V
    .registers 3

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v0, 0x1

    const v1, 0x3e99999a  # 0.3f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3ecccccd  # 0.4f

    aput v1, p0, v0

    return-void
.end method

.method private static setDefaultNormalLightnessValues(Landroidx/palette/graphics/Target;)V
    .registers 3

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v0, 0x0

    const v1, 0x3e99999a  # 0.3f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000  # 0.5f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3f333333  # 0.7f

    aput v1, p0, v0

    return-void
.end method

.method private static setDefaultVibrantSaturationValues(Landroidx/palette/graphics/Target;)V
    .registers 3

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v0, 0x0

    const v1, 0x3eb33333  # 0.35f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, p0, v0

    return-void
.end method

.method private setDefaultWeights()V
    .registers 4

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v0, 0x0

    const v1, 0x3e75c28f  # 0.24f

    aput v1, p0, v0

    const/4 v0, 0x1

    const v2, 0x3f051eb8  # 0.52f

    aput v2, p0, v0

    const/4 v0, 0x2

    aput v1, p0, v0

    return-void
.end method

.method private static setTargetDefaultValues([F)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000  # 0.5f

    aput v1, p0, v0

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, p0, v0

    return-void
.end method


# virtual methods
.method public getLightnessWeight()F
    .registers 2

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getMaximumLightness()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getMaximumSaturation()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getMinimumLightness()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getMinimumSaturation()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getPopulationWeight()F
    .registers 2

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getSaturationWeight()F
    .registers 2

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getTargetLightness()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getTargetSaturation()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public isExclusive()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    return p0
.end method

.method public normalizeWeights()V
    .registers 8

    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_7
    if-ge v3, v0, :cond_15

    iget-object v5, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    aget v5, v5, v3

    cmpl-float v6, v5, v2

    if-lez v6, :cond_12

    add-float/2addr v4, v5

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    cmpl-float v0, v4, v2

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length v0, v0

    :goto_1c
    if-ge v1, v0, :cond_2e

    iget-object v3, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    aget v5, v3, v1

    cmpl-float v5, v5, v2

    if-lez v5, :cond_2b

    aget v5, v3, v1

    div-float/2addr v5, v4

    aput v5, v3, v1

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2e
    return-void
.end method
