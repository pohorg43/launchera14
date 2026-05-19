.class public Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LARGE_LAND_SCREEN_LAND_APP_ZOOM_RATIO:F = 1.7777778f

.field public static final LARGE_PORT_SCREEN_LAND_APP_ZOOM_RATIO:F = 1.7777778f

.field public static final LARGE_SCREEN_BASE_WIDTH_DP:I = 0x1b0

.field public static final LARGE_SCREEN_GRID_NUMBER:I = 0x6

.field public static final LARGE_SYSTEM_GRID_MARGIN:I = 0x28

.field public static final LARGE_SYSTEM_GRID_NUMBER:I = 0xc

.field public static final LARGE_SYSTEM_GRID_SPACING:I = 0xc

.field public static final MIDDLE_LAND_SCREEN_LAND_APP_ZOOM_RATIO:F = 1.7777778f

.field public static final MIDDLE_PORT_SCREEN_LAND_APP_ZOOM_RATIO:F = 1.7777778f

.field public static final MIDDLE_SCREEN_BASE_WIDTH_DP:I = 0x168

.field public static final MIDDLE_SCREEN_GRID_NUMBER:I = 0x4

.field public static final MIDDLE_SYSTEM_GRID_MARGIN:I = 0x18

.field public static final MIDDLE_SYSTEM_GRID_NUMBER:I = 0x8

.field public static final MIDDLE_SYSTEM_GRID_SPACING:I = 0x8

.field public static final SMALL_LAND_SCREEN_LAND_APP_ZOOM_RATIO:F = 1.6666666f

.field public static final SMALL_LAND_SCREEN_PORT_APP_ZOOM_RATIO:F = 0.6923077f

.field private static final SMALL_LAND_SCREEN_TOP_AND_BOTTOM_MARGIN:I = 0x18

.field public static final SMALL_PORT_SCREEN_GRID_NUMBER:I = 0x4

.field public static final SMALL_PORT_SCREEN_LAND_APP_ZOOM_RATIO:F = 1.6666666f

.field public static final SMALL_SYSTEM_GRID_MARGIN:I = 0x10

.field public static final SMALL_SYSTEM_GRID_NUMBER:I = 0x4

.field public static final SMALL_SYSTEM_GRID_SPACING:I = 0x8

.field public static sLargeLandScreenLandAppMaxMiniScale:F

.field public static sLargeLandScreenLandAppMaxZoomScale:F

.field public static sLargeLandScreenLandAppMiniScale:F

.field public static sLargeLandScreenLandAppZoomScale:F

.field public static sLargeLandScreenPortAppMaxMiniScale:F

.field public static sLargeLandScreenPortAppMaxZoomScale:F

.field public static sLargeLandScreenPortAppMiniScale:F

.field public static sLargeLandScreenPortAppZoomScale:F

.field public static sLargePortScreenLandAppMaxMiniScale:F

.field public static sLargePortScreenLandAppMaxZoomScale:F

.field public static sLargePortScreenLandAppMiniScale:F

.field public static sLargePortScreenLandAppZoomScale:F

.field public static sLargePortScreenPortAppMaxMiniScale:F

.field public static sLargePortScreenPortAppMaxZoomScale:F

.field public static sLargePortScreenPortAppMiniScale:F

.field public static sLargePortScreenPortAppZoomScale:F

.field public static sMiddleLandScreenLandAppMaxMiniScale:F

.field public static sMiddleLandScreenLandAppMaxZoomScale:F

.field public static sMiddleLandScreenLandAppMiniScale:F

.field public static sMiddleLandScreenLandAppZoomScale:F

.field public static sMiddleLandScreenPortAppMaxMiniScale:F

.field public static sMiddleLandScreenPortAppMaxZoomScale:F

.field public static sMiddleLandScreenPortAppMiniScale:F

.field public static sMiddleLandScreenPortAppZoomScale:F

.field public static sMiddlePortScreenLandAppMaxMiniScale:F

.field public static sMiddlePortScreenLandAppMaxZoomScale:F

.field public static sMiddlePortScreenLandAppMiniScale:F

.field public static sMiddlePortScreenLandAppZoomScale:F

.field public static sMiddlePortScreenPortAppMaxMiniScale:F

.field public static sMiddlePortScreenPortAppMaxZoomScale:F

.field public static sMiddlePortScreenPortAppMiniScale:F

.field public static sMiddlePortScreenPortAppZoomScale:F

.field public static sSmallLandScreenLandAppMaxMiniScale:F

.field public static sSmallLandScreenLandAppMaxZoomScale:F

.field public static sSmallLandScreenLandAppMiniScale:F

.field public static sSmallLandScreenLandAppZoomScale:F

.field public static sSmallLandScreenPortAppMaxMiniScale:F

.field public static sSmallLandScreenPortAppMaxZoomScale:F

.field public static sSmallLandScreenPortAppMiniScale:F

.field public static sSmallLandScreenPortAppZoomScale:F

.field public static sSmallPortScreenLandAppMaxMiniScale:F

.field public static sSmallPortScreenLandAppMaxZoomScale:F

.field public static sSmallPortScreenLandAppMiniScale:F

.field public static sSmallPortScreenLandAppZoomScale:F

.field public static sSmallPortScreenPortAppMaxMiniScale:F

.field public static sSmallPortScreenPortAppMaxZoomScale:F

.field public static sSmallPortScreenPortAppMiniScale:F

.field public static sSmallPortScreenPortAppZoomScale:F


# instance fields
.field private mScreenHeight:I

.field private mScreenType:I

.field private mScreenWidth:I

.field public final sSmallScreenBaseWidthDp:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDensity()F

    move-result v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getScreenWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->px2dip(FF)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallScreenBaseWidthDp:I

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getScreenWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenWidth:I

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getScreenWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenHeight:I

    iput p1, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_46

    const/4 v0, 0x3

    if-eq p1, v0, :cond_42

    goto :goto_4d

    :cond_42
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->computeLargeScreenZoomScale()V

    goto :goto_4d

    :cond_46
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->computeMiddleScreenZoomScale()V

    goto :goto_4d

    :cond_4a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->computeSmallScreenZoomScale()V

    :goto_4d
    return-void
.end method

.method private computeLargeScreenZoomScale()V
    .registers 6

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDensity()F

    move-result v0

    iget v1, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenWidth:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->px2dip(FF)I

    move-result v0

    add-int/lit8 v0, v0, -0x50

    add-int/lit16 v0, v0, -0x84

    div-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    const/high16 v1, 0x43d80000  # 432.0f

    div-float/2addr v0, v1

    const v2, 0x3f666666  # 0.9f

    mul-float/2addr v2, v0

    sput v2, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppZoomScale:F

    const v2, 0x3faccccd  # 1.35f

    mul-float/2addr v0, v2

    const v2, 0x3fe38e39

    div-float/2addr v0, v2

    sput v0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppZoomScale:F

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDensity()F

    move-result v0

    iget p0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenHeight:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/ZoomUtil;->px2dip(FF)I

    move-result p0

    add-int/lit8 p0, p0, -0x50

    add-int/lit16 p0, p0, -0x84

    div-int/lit8 p0, p0, 0xc

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x3c

    int-to-float p0, p0

    div-float/2addr p0, v1

    const v0, 0x3f19999a  # 0.6f

    mul-float/2addr v0, p0

    sput v0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppZoomScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr p0, v1

    div-float/2addr p0, v2

    sput p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppZoomScale:F

    sget v1, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppZoomScale:F

    const v2, 0x3ecccccd  # 0.4f

    mul-float/2addr v2, v1

    sput v2, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppMiniScale:F

    sget v2, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppZoomScale:F

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float v4, v2, v3

    sput v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppMiniScale:F

    const v4, 0x3ee66666  # 0.45f

    mul-float/2addr v4, v0

    sput v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppMiniScale:F

    mul-float/2addr v3, p0

    sput v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppMiniScale:F

    const v3, 0x3fb33333  # 1.4f

    mul-float v4, v1, v3

    sput v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppMaxZoomScale:F

    mul-float v4, v2, v3

    sput v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppMaxZoomScale:F

    const/high16 v4, 0x3fa00000  # 1.25f

    mul-float/2addr v4, v0

    sput v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppMaxZoomScale:F

    mul-float/2addr v3, p0

    sput v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppMaxZoomScale:F

    const v3, 0x3f0f5c29  # 0.56f

    mul-float/2addr v1, v3

    sput v1, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppMaxMiniScale:F

    const v1, 0x3f266666  # 0.65f

    mul-float/2addr v2, v1

    sput v2, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppMaxMiniScale:F

    mul-float/2addr v0, v3

    sput v0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppMaxMiniScale:F

    const v0, 0x3f333333  # 0.7f

    mul-float/2addr p0, v0

    sput p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppMaxMiniScale:F

    return-void
.end method

.method private computeMiddleScreenZoomScale()V
    .registers 7

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDensity()F

    move-result v0

    iget v1, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenWidth:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->px2dip(FF)I

    move-result v0

    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0x38

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    const/high16 v1, 0x43b40000  # 360.0f

    div-float/2addr v0, v1

    const v2, 0x3f666666  # 0.9f

    mul-float v3, v0, v2

    sput v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenPortAppZoomScale:F

    const v3, 0x3faccccd  # 1.35f

    mul-float/2addr v0, v3

    const v4, 0x3fe38e39

    div-float/2addr v0, v4

    sput v0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenLandAppZoomScale:F

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDensity()F

    move-result v0

    iget p0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenHeight:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/ZoomUtil;->px2dip(FF)I

    move-result p0

    add-int/lit8 p0, p0, -0x30

    add-int/lit8 p0, p0, -0x38

    div-int/lit8 p0, p0, 0x8

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x18

    int-to-float p0, p0

    div-float/2addr p0, v1

    mul-float/2addr v2, p0

    sput v2, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenPortAppZoomScale:F

    mul-float/2addr p0, v3

    div-float/2addr p0, v4

    sput p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenLandAppZoomScale:F

    sget v0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenPortAppZoomScale:F

    const v1, 0x3ecccccd  # 0.4f

    mul-float v3, v0, v1

    sput v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenPortAppMiniScale:F

    sget v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenLandAppZoomScale:F

    mul-float v4, v3, v1

    sput v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenLandAppMiniScale:F

    mul-float v4, v2, v1

    sput v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenPortAppMiniScale:F

    mul-float/2addr v1, p0

    sput v1, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenLandAppMiniScale:F

    const v1, 0x3fa66666  # 1.3f

    mul-float v4, v0, v1

    sput v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenPortAppMaxZoomScale:F

    const v4, 0x3fb33333  # 1.4f

    mul-float v5, v3, v4

    sput v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenLandAppMaxZoomScale:F

    mul-float/2addr v1, v2

    sput v1, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenPortAppMaxZoomScale:F

    mul-float/2addr v4, p0

    sput v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenLandAppMaxZoomScale:F

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float/2addr v0, v1

    sput v0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenPortAppMaxMiniScale:F

    const v0, 0x3f0f5c29  # 0.56f

    mul-float/2addr v3, v0

    sput v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenLandAppMaxMiniScale:F

    mul-float/2addr v2, v1

    sput v2, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenPortAppMaxMiniScale:F

    mul-float/2addr p0, v0

    sput p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenLandAppMaxMiniScale:F

    return-void
.end method

.method private computeSmallScreenZoomScale()V
    .registers 9

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDensity()F

    move-result v0

    iget v1, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenWidth:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->px2dip(FF)I

    move-result v0

    add-int/lit8 v1, v0, -0x20

    add-int/lit8 v1, v1, -0x18

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallScreenBaseWidthDp:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f4ccccd  # 0.8f

    mul-float/2addr v2, v1

    sput v2, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppZoomScale:F

    const v2, 0x3f666666  # 0.9f

    mul-float/2addr v1, v2

    const v2, 0x3fd55555

    div-float/2addr v1, v2

    sput v1, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppZoomScale:F

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDensity()F

    move-result v1

    iget v3, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenHeight:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Lcom/oplus/zoom/common/ZoomUtil;->px2dip(FF)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    add-int/lit8 v1, v1, -0x18

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget p0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallScreenBaseWidthDp:I

    int-to-float v3, p0

    div-float/2addr v1, v3

    int-to-float v0, v0

    const/high16 v3, 0x42400000  # 48.0f

    sub-float/2addr v0, v3

    const v3, 0x3f313b14

    mul-float/2addr v3, v0

    int-to-float v4, p0

    div-float/2addr v3, v4

    sput v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppZoomScale:F

    const/high16 v4, 0x3f800000  # 1.0f

    mul-float/2addr v1, v4

    div-float/2addr v1, v2

    sput v1, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppZoomScale:F

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppZoomScale:F

    const v5, 0x3ee66666  # 0.45f

    mul-float/2addr v5, v4

    sput v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppMiniScale:F

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppZoomScale:F

    const v6, 0x3f0f5c29  # 0.56f

    mul-float v7, v5, v6

    sput v7, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppMiniScale:F

    const v7, 0x3f19999a  # 0.6f

    mul-float/2addr v7, v3

    sput v7, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppMiniScale:F

    const/high16 v7, 0x3f000000  # 0.5f

    mul-float/2addr v7, v1

    sput v7, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppMiniScale:F

    int-to-float v7, p0

    div-float v7, v0, v7

    sput v7, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppMaxZoomScale:F

    div-float/2addr v0, v2

    int-to-float p0, p0

    div-float/2addr v0, p0

    sput v0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppMaxZoomScale:F

    sput v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppMaxZoomScale:F

    const/high16 p0, 0x3fa00000  # 1.25f

    mul-float/2addr p0, v1

    sput p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppMaxZoomScale:F

    mul-float/2addr v4, v6

    sput v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppMaxMiniScale:F

    const p0, 0x3f333333  # 0.7f

    mul-float/2addr v5, p0

    sput v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppMaxMiniScale:F

    mul-float/2addr v3, p0

    sput v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppMaxMiniScale:F

    const p0, 0x3f266666  # 0.65f

    mul-float/2addr v1, p0

    sput v1, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppMaxMiniScale:F

    return-void
.end method

.method private getDensity()F
    .registers 1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDensity()F

    move-result p0

    return p0
.end method

.method private getScreenHeight()I
    .registers 1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result p0

    return p0
.end method

.method private getScreenWidth()I
    .registers 1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getDefaultMiniZoomScale(ZZ)F
    .registers 4

    iget p0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_32

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_43

    :cond_e
    if-eqz p2, :cond_18

    if-eqz p1, :cond_15

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppMiniScale:F

    goto :goto_43

    :cond_15
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppMiniScale:F

    goto :goto_43

    :cond_18
    if-eqz p1, :cond_1d

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppMiniScale:F

    goto :goto_43

    :cond_1d
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppMiniScale:F

    goto :goto_43

    :cond_20
    if-eqz p2, :cond_2a

    if-eqz p1, :cond_27

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenLandAppMiniScale:F

    goto :goto_43

    :cond_27
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenPortAppMiniScale:F

    goto :goto_43

    :cond_2a
    if-eqz p1, :cond_2f

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenLandAppMiniScale:F

    goto :goto_43

    :cond_2f
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenPortAppMiniScale:F

    goto :goto_43

    :cond_32
    if-eqz p2, :cond_3c

    if-eqz p1, :cond_39

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppMiniScale:F

    goto :goto_43

    :cond_39
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppMiniScale:F

    goto :goto_43

    :cond_3c
    if-eqz p1, :cond_41

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppMiniScale:F

    goto :goto_43

    :cond_41
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppMiniScale:F

    :goto_43
    return p0
.end method

.method public getDefaultZoomScale(ZZ)F
    .registers 4

    iget p0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_32

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_43

    :cond_e
    if-eqz p2, :cond_18

    if-eqz p1, :cond_15

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppZoomScale:F

    goto :goto_43

    :cond_15
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppZoomScale:F

    goto :goto_43

    :cond_18
    if-eqz p1, :cond_1d

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppZoomScale:F

    goto :goto_43

    :cond_1d
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppZoomScale:F

    goto :goto_43

    :cond_20
    if-eqz p2, :cond_2a

    if-eqz p1, :cond_27

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenLandAppZoomScale:F

    goto :goto_43

    :cond_27
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenPortAppZoomScale:F

    goto :goto_43

    :cond_2a
    if-eqz p1, :cond_2f

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenLandAppZoomScale:F

    goto :goto_43

    :cond_2f
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenPortAppZoomScale:F

    goto :goto_43

    :cond_32
    if-eqz p2, :cond_3c

    if-eqz p1, :cond_39

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppZoomScale:F

    goto :goto_43

    :cond_39
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppZoomScale:F

    goto :goto_43

    :cond_3c
    if-eqz p1, :cond_41

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppZoomScale:F

    goto :goto_43

    :cond_41
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppZoomScale:F

    :goto_43
    return p0
.end method

.method public getMaxMiniZoomScale(ZZ)F
    .registers 4

    iget p0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_32

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_43

    :cond_e
    if-eqz p2, :cond_18

    if-eqz p1, :cond_15

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppMaxMiniScale:F

    goto :goto_43

    :cond_15
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppMaxMiniScale:F

    goto :goto_43

    :cond_18
    if-eqz p1, :cond_1d

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppMaxMiniScale:F

    goto :goto_43

    :cond_1d
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppMaxMiniScale:F

    goto :goto_43

    :cond_20
    if-eqz p2, :cond_2a

    if-eqz p1, :cond_27

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenLandAppMaxMiniScale:F

    goto :goto_43

    :cond_27
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenPortAppMaxMiniScale:F

    goto :goto_43

    :cond_2a
    if-eqz p1, :cond_2f

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenLandAppMaxMiniScale:F

    goto :goto_43

    :cond_2f
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenPortAppMaxMiniScale:F

    goto :goto_43

    :cond_32
    if-eqz p2, :cond_3c

    if-eqz p1, :cond_39

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppMaxMiniScale:F

    goto :goto_43

    :cond_39
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppMaxMiniScale:F

    goto :goto_43

    :cond_3c
    if-eqz p1, :cond_41

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppMaxMiniScale:F

    goto :goto_43

    :cond_41
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppMaxMiniScale:F

    :goto_43
    return p0
.end method

.method public getMaxZoomScale(ZZ)F
    .registers 4

    iget p0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_32

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_43

    :cond_e
    if-eqz p2, :cond_18

    if-eqz p1, :cond_15

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppMaxZoomScale:F

    goto :goto_43

    :cond_15
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppMaxZoomScale:F

    goto :goto_43

    :cond_18
    if-eqz p1, :cond_1d

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppMaxZoomScale:F

    goto :goto_43

    :cond_1d
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppMaxZoomScale:F

    goto :goto_43

    :cond_20
    if-eqz p2, :cond_2a

    if-eqz p1, :cond_27

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenLandAppMaxZoomScale:F

    goto :goto_43

    :cond_27
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenPortAppMaxZoomScale:F

    goto :goto_43

    :cond_2a
    if-eqz p1, :cond_2f

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenLandAppMaxZoomScale:F

    goto :goto_43

    :cond_2f
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenPortAppMaxZoomScale:F

    goto :goto_43

    :cond_32
    if-eqz p2, :cond_3c

    if-eqz p1, :cond_39

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppMaxZoomScale:F

    goto :goto_43

    :cond_39
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppMaxZoomScale:F

    goto :goto_43

    :cond_3c
    if-eqz p1, :cond_41

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppMaxZoomScale:F

    goto :goto_43

    :cond_41
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppMaxZoomScale:F

    :goto_43
    return p0
.end method

.method public getMinMiniZoomScale(ZZ)F
    .registers 4

    iget p0, p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->mScreenType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_32

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_43

    :cond_e
    if-eqz p2, :cond_18

    if-eqz p1, :cond_15

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppMiniScale:F

    goto :goto_43

    :cond_15
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppMiniScale:F

    goto :goto_43

    :cond_18
    if-eqz p1, :cond_1d

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppMiniScale:F

    goto :goto_43

    :cond_1d
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppMiniScale:F

    goto :goto_43

    :cond_20
    if-eqz p2, :cond_2a

    if-eqz p1, :cond_27

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenLandAppMiniScale:F

    goto :goto_43

    :cond_27
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddlePortScreenPortAppMiniScale:F

    goto :goto_43

    :cond_2a
    if-eqz p1, :cond_2f

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenLandAppMiniScale:F

    goto :goto_43

    :cond_2f
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sMiddleLandScreenPortAppMiniScale:F

    goto :goto_43

    :cond_32
    if-eqz p2, :cond_3c

    if-eqz p1, :cond_39

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppMiniScale:F

    goto :goto_43

    :cond_39
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppMiniScale:F

    goto :goto_43

    :cond_3c
    if-eqz p1, :cond_41

    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppMiniScale:F

    goto :goto_43

    :cond_41
    sget p0, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppMiniScale:F

    :goto_43
    return p0
.end method
