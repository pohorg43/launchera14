.class public Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;


# static fields
.field public static final LARGE_CORNER_ZOOM_DP:I = 0x16

.field public static final LARGE_LAND_SCREEN_LAND_APP_SUPER_MINI_SCALE:F = 0.2f

.field public static final LARGE_LAND_SCREEN_LAND_APP_ZOOM_RATIO:F = 1.7777778f

.field public static final LARGE_LAND_SCREEN_LAND_APP_ZOOM_RIGHT_OFFSET_DP:I = 0x18

.field public static final LARGE_LAND_SCREEN_LAND_APP_ZOOM_TOP_OFFSET_DP:I = 0x30

.field public static final LARGE_LAND_SCREEN_MINI_LEFT_RIGHT_OFFSET_DP:I = 0x18

.field public static final LARGE_LAND_SCREEN_MINI_TOP_BOTTOM_OFFSET_DP:I = 0x30

.field public static final LARGE_LAND_SCREEN_PORT_APP_SUPER_MINI_SCALE:F = 0.2f

.field public static final LARGE_LAND_SCREEN_PORT_APP_ZOOM_RATIO:F = 0.5625f

.field public static final LARGE_LAND_SCREEN_PORT_APP_ZOOM_RIGHT_OFFSET_DP:I = 0x18

.field public static final LARGE_LAND_SCREEN_PORT_APP_ZOOM_TOP_OFFSET_DP:I = 0x30

.field public static final LARGE_LAND_SCREEN_SUPER_MINI_LEFT_RIGHT_OFFSET_DP:I = 0x19

.field public static final LARGE_LAND_SCREEN_SUPER_MINI_TOP_BOTTOM_OFFSET_DP:I = 0x31

.field public static final LARGE_LAND_SCREEN_ZOOM_TOP_LIMIT_DP:I = 0x19

.field public static final LARGE_PORT_SCREEN_LAND_APP_SUPER_MINI_SCALE:F = 0.2f

.field public static final LARGE_PORT_SCREEN_LAND_APP_ZOOM_RATIO:F = 1.7777778f

.field public static final LARGE_PORT_SCREEN_LAND_APP_ZOOM_RIGHT_OFFSET_DP:I = 0x18

.field public static final LARGE_PORT_SCREEN_LAND_APP_ZOOM_TOP_OFFSET_DP:I = 0x30

.field public static final LARGE_PORT_SCREEN_MINI_LEFT_RIGHT_OFFSET_DP:I = 0x18

.field public static final LARGE_PORT_SCREEN_MINI_TOP_BOTTOM_OFFSET_DP:I = 0x30

.field public static final LARGE_PORT_SCREEN_PORT_APP_SUPER_MINI_SCALE:F = 0.2f

.field public static final LARGE_PORT_SCREEN_PORT_APP_ZOOM_RATIO:F = 0.5625f

.field public static final LARGE_PORT_SCREEN_PORT_APP_ZOOM_RIGHT_OFFSET_DP:I = 0x18

.field public static final LARGE_PORT_SCREEN_PORT_APP_ZOOM_TOP_OFFSET_DP:I = 0x30

.field public static final LARGE_PORT_SCREEN_SUPER_MINI_LEFT_RIGHT_OFFSET_DP:I = 0x19

.field public static final LARGE_PORT_SCREEN_SUPER_MINI_TOP_BOTTOM_OFFSET_DP:I = 0x31

.field public static final LARGE_PORT_SCREEN_ZOOM_TOP_LIMIT_DP:I = 0x23

.field public static final LARGE_SCREEN_BASE_WIDTH_DP:I = 0x1b0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

.field private mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

.field private mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

.field private mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

.field private mDefaultSuperMiniBoundLandScreenLandApp:Landroid/graphics/Rect;

.field private mDefaultSuperMiniBoundLandScreenPortApp:Landroid/graphics/Rect;

.field private mDefaultSuperMiniBoundPortScreenLandApp:Landroid/graphics/Rect;

.field private mDefaultSuperMiniBoundPortScreenPortApp:Landroid/graphics/Rect;

.field private mDisplayId:I

.field private mMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

.field private mMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

.field private mMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

.field private mMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

.field private mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

.field private mScreenType:I

.field private mSuperMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

.field private mSuperMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

.field private mSuperMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

.field private mSuperMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

.field private mZoomScaleRectLandScreenLandApp:Landroid/graphics/Rect;

.field private mZoomScaleRectLandScreenLandAppLeft:Landroid/graphics/Rect;

.field private mZoomScaleRectLandScreenLandAppRight:Landroid/graphics/Rect;

.field private mZoomScaleRectLandScreenPortApp:Landroid/graphics/Rect;

.field private mZoomScaleRectLandScreenPortAppLeft:Landroid/graphics/Rect;

.field private mZoomScaleRectLandScreenPortAppRight:Landroid/graphics/Rect;

.field private mZoomScaleRectPortScreenLandApp:Landroid/graphics/Rect;

.field private mZoomScaleRectPortScreenLandAppLeft:Landroid/graphics/Rect;

.field private mZoomScaleRectPortScreenLandAppRight:Landroid/graphics/Rect;

.field private mZoomScaleRectPortScreenPortApp:Landroid/graphics/Rect;

.field private mZoomScaleRectPortScreenPortAppLeft:Landroid/graphics/Rect;

.field private mZoomScaleRectPortScreenPortAppRight:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultSuperMiniBoundPortScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultSuperMiniBoundLandScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultSuperMiniBoundPortScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultSuperMiniBoundLandScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mScreenType:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenPortAppLeft:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenPortAppRight:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenLandAppLeft:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenLandAppRight:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenPortAppLeft:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenPortAppRight:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenLandAppLeft:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenLandAppRight:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDisplayId:I

    new-instance p1, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    iget p2, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mScreenType:I

    invoke-direct {p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    return-void
.end method

.method private getDefaultZoomScaleRectInLeft(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenLandAppLeft:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenPortAppLeft:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenLandAppLeft:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenPortAppLeft:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method private getDefaultZoomScaleRectInRight(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenLandAppRight:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenPortAppRight:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenLandAppRight:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenPortAppRight:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method private getDensity()F
    .registers 1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDensity()F

    move-result p0

    return p0
.end method

.method private getRotation()I
    .registers 1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getRotation()I

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

.method private initDefaultMiniZoomScaleRect()V
    .registers 8

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getTopBottomLimitInMini(Z)I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result v1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    move-result v2

    goto :goto_1f

    :cond_1b
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    move-result v2

    :goto_1f
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    move-result v3

    goto :goto_2e

    :cond_2a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    move-result v3

    :goto_2e
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDensity()F

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppMiniScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppMiniScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v2, v1

    sub-int v4, v2, v4

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v0, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppMiniScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppMiniScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v4, v2, v4

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v0, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppMiniScale:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppMiniScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v1

    sub-int v1, v3, v2

    add-int/2addr v4, v0

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppMiniScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppMiniScale:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v1, v3, v1

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initDefaultSuperMiniZoomScaleRect()V
    .registers 9

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getTopBottomLimitInSuperMini(Z)I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getLeftRightLimitInSuperMini(Z)I

    move-result v1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    move-result v2

    goto :goto_1f

    :cond_1b
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    move-result v2

    :goto_1f
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    move-result v3

    goto :goto_2e

    :cond_2a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    move-result v3

    :goto_2e
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDensity()F

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd  # 0.2f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    sub-int/2addr v2, v1

    sub-int v4, v2, v4

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v0, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    sub-int v4, v2, v4

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v0, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v1

    sub-int v1, v3, v2

    add-int/2addr v4, v0

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int v1, v3, v1

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initDefaultZoomBound()V
    .registers 8

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    goto :goto_d

    :cond_a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    :goto_d
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    goto :goto_1a

    :cond_17
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    :goto_1a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDensity()F

    move-result v0

    const/high16 v1, 0x43d80000  # 432.0f

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v2

    int-to-float v3, v2

    const/high16 v4, 0x3f100000  # 0.5625f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v2

    int-to-float v3, v2

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v2

    int-to-float v3, v2

    const v4, 0x3fe38e39

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v6, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v6, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initDefaultZoomScaleRect()V
    .registers 12

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    move-result v0

    :goto_f
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    move-result v1

    goto :goto_1e

    :cond_1a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    move-result v1

    :goto_1e
    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDensity()F

    move-result v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppZoomScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v6, v0, v4

    const/high16 v7, 0x41c00000  # 24.0f

    invoke-static {v3, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v8

    sub-int/2addr v6, v8

    const/high16 v8, 0x42400000  # 48.0f

    invoke-static {v3, v8}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v9

    add-int/2addr v4, v6

    add-int/2addr v5, v9

    iget-object v10, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v10, v6, v9, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppZoomScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v0, v4

    invoke-static {v3, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v3, v8}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v6

    add-int/2addr v4, v0

    add-int/2addr v5, v6

    iget-object v9, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v9, v0, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppZoomScale:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v5, v1, v0

    invoke-static {v3, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v3, v8}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v6

    add-int/2addr v0, v5

    add-int/2addr v4, v6

    iget-object v9, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v9, v5, v6, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppZoomScale:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v1, v0

    invoke-static {v3, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-static {v3, v8}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v3

    add-int/2addr v0, v1

    add-int/2addr v4, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initDefaultZoomScaleRectInHandle()V
    .registers 12

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    move-result v0

    :goto_f
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    move-result v1

    goto :goto_1e

    :cond_1a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    move-result v1

    :goto_1e
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDensity()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppZoomScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenPortAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x41c00000  # 24.0f

    invoke-static {v2, v5}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v6

    const/high16 v7, 0x42400000  # 48.0f

    invoke-static {v2, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v8

    iget-object v9, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenPortAppLeft:Landroid/graphics/Rect;

    add-int v10, v6, v3

    add-int/2addr v4, v8

    invoke-virtual {v9, v6, v8, v10, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenPortAppRight:Landroid/graphics/Rect;

    sub-int v3, v0, v3

    sub-int/2addr v3, v6

    sub-int v6, v0, v6

    invoke-virtual {v9, v3, v8, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppZoomScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v6, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargePortScreenLandAppZoomScale:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v2, v5}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v6

    invoke-static {v2, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v8

    iget-object v9, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenLandAppLeft:Landroid/graphics/Rect;

    add-int v10, v6, v3

    add-int/2addr v4, v8

    invoke-virtual {v9, v6, v8, v10, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenLandAppRight:Landroid/graphics/Rect;

    sub-int v3, v0, v3

    sub-int/2addr v3, v6

    sub-int/2addr v0, v6

    invoke-virtual {v9, v3, v8, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppZoomScale:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenPortAppZoomScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v5}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v4

    invoke-static {v2, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v6

    iget-object v8, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenPortAppLeft:Landroid/graphics/Rect;

    add-int v9, v4, v0

    add-int/2addr v3, v6

    invoke-virtual {v8, v4, v6, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenPortAppRight:Landroid/graphics/Rect;

    sub-int v0, v1, v0

    sub-int/2addr v0, v4

    sub-int v4, v1, v4

    invoke-virtual {v8, v0, v6, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget v3, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppZoomScale:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sLargeLandScreenLandAppZoomScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v4, v1, v0

    invoke-static {v2, v5}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v5

    sub-int v5, v4, v5

    invoke-static {v2, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v2

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenLandAppLeft:Landroid/graphics/Rect;

    add-int/2addr v0, v5

    add-int/2addr v3, v2

    invoke-virtual {v6, v5, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenLandAppRight:Landroid/graphics/Rect;

    sub-int/2addr v4, v5

    sub-int/2addr v1, v5

    invoke-virtual {p0, v4, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private isPortScreen()Z
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getRotation()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getRotation()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method


# virtual methods
.method public getDefaultMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDefaultMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDefaultMiniZoomScale(ZZ)F

    move-result p0

    new-instance p1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p1, v0, p0}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object p1
.end method

.method public getDefaultMiniZoomRectForDisplayChange(Landroid/graphics/Rect;ILcom/oplus/zoom/common/ZoomPositionInfo;)Landroid/graphics/Rect;
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, p1, :cond_e

    move p1, v0

    goto :goto_f

    :cond_e
    move p1, v1

    :goto_f
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDefaultMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ne p2, v0, :cond_32

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result v1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getTopBottomLimitInMini(Z)I

    move-result p0

    goto :goto_89

    :cond_32
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4d

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result v1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getTopBottomLimitInMini(Z)I

    move-result p0

    :goto_4a
    sub-int p0, p2, p0

    goto :goto_89

    :cond_4d
    const/4 v0, 0x3

    if-ne p2, v0, :cond_68

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result v0

    sub-int v1, p2, v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getTopBottomLimitInMini(Z)I

    move-result p0

    goto :goto_89

    :cond_68
    const/4 v0, 0x4

    if-ne p2, v0, :cond_88

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenWidth()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result v0

    sub-int v1, p2, v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getScreenHeight()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getTopBottomLimitInMini(Z)I

    move-result p0

    goto :goto_4a

    :cond_88
    move p0, v1

    :goto_89
    new-instance p2, Landroid/graphics/Rect;

    add-int/2addr p3, v1

    add-int/2addr p1, p0

    invoke-direct {p2, v1, p0, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method public getDefaultMiniZoomScale(ZZ)F
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDefaultMiniZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getDefaultMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method public getDefaultSuperMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDefaultSuperMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getSuperMiniZoomScale(Z)F

    move-result p0

    new-instance p1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p1, p2, p0}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object p1
.end method

.method public getDefaultSuperMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mSuperMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method public getDefaultZoomBound(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method public getDefaultZoomPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDefaultZoomScaleRect(ZZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDefaultZoomScale(ZZ)F

    move-result p0

    new-instance p1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p1, v0, p0}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object p1
.end method

.method public getDefaultZoomPositionInfoInHandle(ZZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 4

    if-eqz p3, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDefaultZoomScaleRectInLeft(ZZ)Landroid/graphics/Rect;

    move-result-object p3

    goto :goto_b

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDefaultZoomScaleRectInRight(ZZ)Landroid/graphics/Rect;

    move-result-object p3

    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDefaultZoomScale(ZZ)F

    move-result p0

    new-instance p1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p1, p3, p0}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object p1
.end method

.method public getDefaultZoomScale(ZZ)F
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDefaultZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getDefaultZoomScaleRect(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mZoomScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method public getLeftRightLimitInMini(Z)I
    .registers 2

    const/16 p1, 0x18

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDensity()F

    move-result p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    return p0
.end method

.method public getLeftRightLimitInSuperMini(Z)I
    .registers 2

    const/16 p1, 0x19

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDensity()F

    move-result p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    return p0
.end method

.method public getMaxMiniZoomScale(ZZ)F
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getMaxMiniZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getMaxZoomScale(ZZ)F
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getMaxZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getMinMiniZoomScale(ZZ)F
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getMinMiniZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getScreenType()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mScreenType:I

    return p0
.end method

.method public getSuperMiniZoomScale(Z)F
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->isPortScreen()Z

    const p0, 0x3e4ccccd  # 0.2f

    return p0
.end method

.method public getTopBottomLimitInMini(Z)I
    .registers 2

    const/16 p1, 0x30

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDensity()F

    move-result p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    return p0
.end method

.method public getTopBottomLimitInSuperMini(Z)I
    .registers 2

    const/16 p1, 0x31

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDensity()F

    move-result p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    return p0
.end method

.method public getTopLimitInZoom(Z)I
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getZoomCornerRadius(Z)I
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->getDensity()F

    move-result p0

    const/16 p1, 0x16

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    return p0
.end method

.method public initZoomDefaultInfo()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->initDefaultZoomBound()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->initDefaultZoomScaleRect()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->initDefaultZoomScaleRectInHandle()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->initDefaultMiniZoomScaleRect()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;->initDefaultSuperMiniZoomScaleRect()V

    return-void
.end method
