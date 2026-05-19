.class public Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;


# static fields
.field public static final SMALL_CORNER_ZOOM_DP:I = 0x16

.field public static final SMALL_LAND_SCREEN_LAND_APP_SUPER_MINI_SCALE:F = 0.2f

.field public static final SMALL_LAND_SCREEN_LAND_APP_ZOOM_LEFT_OFFSET_DP:I = 0x28

.field public static final SMALL_LAND_SCREEN_LAND_APP_ZOOM_RATIO:F = 1.6666666f

.field public static final SMALL_LAND_SCREEN_LAND_APP_ZOOM_TOP_OFFSET_DP:I = 0x0

.field public static final SMALL_LAND_SCREEN_MINI_LEFT_RIGHT_OFFSET_DP:I = 0x10

.field public static final SMALL_LAND_SCREEN_MINI_TOP_BOTTOM_OFFSET_DP:I = 0x28

.field public static final SMALL_LAND_SCREEN_PORT_APP_SUPER_MINI_SCALE:F = 0.2f

.field public static final SMALL_LAND_SCREEN_PORT_APP_ZOOM_LEFT_OFFSET_DP:I = 0x28

.field public static final SMALL_LAND_SCREEN_PORT_APP_ZOOM_RATIO:F = 0.6923077f

.field public static final SMALL_LAND_SCREEN_SUPER_MINI_LEFT_RIGHT_OFFSET_DP:I = 0x11

.field public static final SMALL_LAND_SCREEN_SUPER_MINI_TOP_BOTTOM_OFFSET_DP:I = 0x29

.field public static final SMALL_PORT_SCREEN_LAND_APP_SUPER_MINI_SCALE:F = 0.2f

.field public static final SMALL_PORT_SCREEN_LAND_APP_ZOOM_RATIO:F = 1.6666666f

.field public static final SMALL_PORT_SCREEN_MINI_LEFT_RIGHT_OFFSET_DP:I = 0x14

.field public static final SMALL_PORT_SCREEN_MINI_TOP_BOTTOM_OFFSET_DP:I = 0x28

.field public static final SMALL_PORT_SCREEN_PORT_APP_SUPER_MINI_SCALE:F = 0.2f

.field public static final SMALL_PORT_SCREEN_PORT_APP_ZOOM_BOTTOM_OFFSET_DP:I = 0x90

.field public static final SMALL_PORT_SCREEN_PORT_APP_ZOOM_RATIO:F = 0.6f

.field public static final SMALL_PORT_SCREEN_PORT_APP_ZOOM_TOP_OFFSET_DP:I = 0x100

.field public static final SMALL_PORT_SCREEN_SUPER_MINI_LEFT_RIGHT_OFFSET_DP:I = 0x15

.field public static final SMALL_PORT_SCREEN_SUPER_MINI_TOP_BOTTOM_OFFSET_DP:I = 0x29

.field public static final SMALL_SCREEN_BASE_WIDTH_DP:I = 0x168


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

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mScreenType:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenPortAppLeft:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenPortAppRight:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenLandAppLeft:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenLandAppRight:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortAppLeft:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortAppRight:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenLandAppLeft:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenLandAppRight:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultSuperMiniBoundPortScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultSuperMiniBoundLandScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultSuperMiniBoundPortScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultSuperMiniBoundLandScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDisplayId:I

    new-instance p1, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    iget p2, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mScreenType:I

    invoke-direct {p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    return-void
.end method

.method private getDefaultZoomScaleRectInLeft(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenLandAppLeft:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenPortAppLeft:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenLandAppLeft:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortAppLeft:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method private getDefaultZoomScaleRectInRight(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenLandAppRight:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenPortAppRight:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenLandAppRight:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortAppRight:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method private getDefaultZoomScaleRectLandScreenPortApp()Landroid/graphics/Rect;
    .registers 5

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v0

    :goto_f
    iget-object v1, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomDisplayController;->isStatusbarHide()Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    iget-object v1, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortApp:Landroid/graphics/Rect;

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

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getTopBottomLimitInMini(Z)I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result v1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v2

    goto :goto_1f

    :cond_1b
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v2

    :goto_1f
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v3

    goto :goto_2e

    :cond_2a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v3

    :goto_2e
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDensity()F

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppMiniScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppMiniScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v2, v1

    sub-int v4, v2, v4

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v0, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppMiniScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppMiniScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v4, v2, v4

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v0, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppMiniScale:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppMiniScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v1

    sub-int v1, v3, v2

    add-int/2addr v4, v0

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppMiniScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppMiniScale:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v1, v3, v1

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initDefaultSuperMiniZoomScaleRect()V
    .registers 8

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getTopBottomLimitInSuperMini(Z)I

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getLeftRightLimitInSuperMini(Z)I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v1

    goto :goto_1e

    :cond_1a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v1

    :goto_1e
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v2

    goto :goto_2d

    :cond_29
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v2

    :goto_2d
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDensity()F

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccd  # 0.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    sub-int/2addr v1, v0

    sub-int v0, v1, v3

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v2, v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v3, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v1, v0

    div-int/lit8 v3, v3, 0x2

    sub-int v5, v2, v3

    add-int/2addr v3, v2

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v5, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v1, v0

    div-int/lit8 v3, v3, 0x2

    sub-int v5, v2, v3

    add-int/2addr v3, v2

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v5, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v1, v0

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v2, v3

    add-int/2addr v2, v3

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initDefaultZoomBound()V
    .registers 8

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v0

    :goto_f
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v1

    goto :goto_1e

    :cond_1a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v1

    :goto_1e
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDensity()F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v3, v2

    const v4, 0x3f19999a  # 0.6f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v3, v2

    const v4, 0x3f313b14

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v3, v2

    const v4, 0x3fd55555

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v6, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v5, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initDefaultZoomScaleRect()V
    .registers 10

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v0

    :goto_f
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v1

    goto :goto_1e

    :cond_1a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v1

    :goto_1e
    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDensity()F

    move-result v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppZoomScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v6, v0, v4

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x43100000  # 144.0f

    invoke-static {v3, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v7

    sub-int v7, v1, v7

    sub-int/2addr v7, v5

    add-int/2addr v4, v6

    add-int/2addr v5, v7

    iget-object v8, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppZoomScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v6, v0, v4

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v6

    add-int/2addr v5, v1

    iget-object v7, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppZoomScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x42200000  # 40.0f

    invoke-static {v3, v5}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v6

    sub-int v7, v0, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v4, v2

    iget-object v7, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppZoomScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppZoomScale:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v3, v5}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v3

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initDefaultZoomScaleRectInHandle()V
    .registers 11

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v0

    :goto_f
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result v1

    goto :goto_1e

    :cond_1a
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result v1

    :goto_1e
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDensity()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppZoomScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenPortAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x43800000  # 256.0f

    invoke-static {v2, v5}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v5

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenPortAppLeft:Landroid/graphics/Rect;

    add-int v8, v5, v3

    add-int/2addr v4, v6

    invoke-virtual {v7, v5, v6, v8, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenPortAppRight:Landroid/graphics/Rect;

    sub-int v3, v0, v3

    sub-int/2addr v3, v5

    sub-int v5, v0, v5

    invoke-virtual {v7, v3, v6, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppZoomScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallPortScreenLandAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v5, v0, v3

    div-int/lit8 v6, v5, 0x2

    sub-int v7, v1, v4

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenLandAppLeft:Landroid/graphics/Rect;

    add-int/2addr v3, v6

    add-int/2addr v4, v7

    invoke-virtual {v8, v6, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenLandAppRight:Landroid/graphics/Rect;

    sub-int/2addr v5, v6

    sub-int v6, v0, v6

    invoke-virtual {v3, v5, v7, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppZoomScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenPortAppZoomScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x42200000  # 40.0f

    invoke-static {v2, v5}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v6

    sub-int v7, v0, v4

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortAppLeft:Landroid/graphics/Rect;

    add-int v9, v6, v3

    add-int/2addr v4, v7

    invoke-virtual {v8, v6, v7, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenPortAppRight:Landroid/graphics/Rect;

    sub-int v3, v1, v3

    sub-int/2addr v3, v6

    sub-int v6, v1, v6

    invoke-virtual {v8, v3, v7, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppZoomScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v6, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->sSmallLandScreenLandAppZoomScale:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v2, v5}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v2

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    iget-object v5, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenLandAppLeft:Landroid/graphics/Rect;

    add-int v6, v2, v3

    add-int/2addr v4, v0

    invoke-virtual {v5, v2, v0, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenLandAppRight:Landroid/graphics/Rect;

    sub-int v3, v1, v3

    sub-int/2addr v3, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private isPortScreen()Z
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getRotation()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getRotation()I

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultMiniZoomScale(ZZ)F

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
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ne p2, v0, :cond_32

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result v1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getTopBottomLimitInMini(Z)I

    move-result p0

    goto :goto_89

    :cond_32
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4d

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result v1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getTopBottomLimitInMini(Z)I

    move-result p0

    :goto_4a
    sub-int p0, p2, p0

    goto :goto_89

    :cond_4d
    const/4 v0, 0x3

    if-ne p2, v0, :cond_68

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result v0

    sub-int v1, p2, v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getTopBottomLimitInMini(Z)I

    move-result p0

    goto :goto_89

    :cond_68
    const/4 v0, 0x4

    if-ne p2, v0, :cond_88

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenWidth()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result v0

    sub-int v1, p2, v0

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getScreenHeight()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getTopBottomLimitInMini(Z)I

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

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDefaultMiniZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getDefaultMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method public getDefaultSuperMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultSuperMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getSuperMiniZoomScale(Z)F

    move-result p0

    new-instance p1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p1, p2, p0}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object p1
.end method

.method public getDefaultSuperMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mSuperMiniScaleRectLandScreenPortApp:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method public getDefaultZoomBound(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenLandApp:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundPortScreenPortApp:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenLandApp:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mDefaultBoundLandScreenPortApp:Landroid/graphics/Rect;

    :goto_11
    return-object p0
.end method

.method public getDefaultZoomPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultZoomScaleRect(ZZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultZoomScale(ZZ)F

    move-result p0

    new-instance p1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p1, v0, p0}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object p1
.end method

.method public getDefaultZoomPositionInfoInHandle(ZZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 4

    if-eqz p3, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultZoomScaleRectInLeft(ZZ)Landroid/graphics/Rect;

    move-result-object p3

    goto :goto_b

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultZoomScaleRectInRight(ZZ)Landroid/graphics/Rect;

    move-result-object p3

    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultZoomScale(ZZ)F

    move-result p0

    new-instance p1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p1, p3, p0}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object p1
.end method

.method public getDefaultZoomScale(ZZ)F
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getDefaultZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getDefaultZoomScaleRect(ZZ)Landroid/graphics/Rect;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenLandApp:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectPortScreenPortApp:Landroid/graphics/Rect;

    :goto_9
    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mZoomScaleRectLandScreenLandApp:Landroid/graphics/Rect;

    goto :goto_13

    :cond_f
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultZoomScaleRectLandScreenPortApp()Landroid/graphics/Rect;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method public getLeftRightLimitInMini(Z)I
    .registers 2

    if-eqz p1, :cond_5

    const/16 p1, 0x14

    goto :goto_7

    :cond_5
    const/16 p1, 0x10

    :goto_7
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDensity()F

    move-result p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    return p0
.end method

.method public getLeftRightLimitInSuperMini(Z)I
    .registers 2

    if-eqz p1, :cond_5

    const/16 p1, 0x15

    goto :goto_7

    :cond_5
    const/16 p1, 0x11

    :goto_7
    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDensity()F

    move-result p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    return p0
.end method

.method public getMaxMiniZoomScale(ZZ)F
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getMaxMiniZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getMaxZoomScale(ZZ)F
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getMaxZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getMinMiniZoomScale(ZZ)F
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mScreenGrid:Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ScreenGridUtils;->getMinMiniZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getScreenType()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mScreenType:I

    return p0
.end method

.method public getSuperMiniZoomScale(Z)F
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->isPortScreen()Z

    const p0, 0x3e4ccccd  # 0.2f

    return p0
.end method

.method public getTopBottomLimitInMini(Z)I
    .registers 2

    const/16 p1, 0x28

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDensity()F

    move-result p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    return p0
.end method

.method public getTopBottomLimitInSuperMini(Z)I
    .registers 2

    const/16 p1, 0x29

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDensity()F

    move-result p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    return p0
.end method

.method public getTopLimitInZoom(Z)I
    .registers 2

    if-nez p1, :cond_13

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomDisplayController;->isStatusbarHide()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDefaultZoomScaleRectLandScreenPortApp()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0

    :cond_13
    iget-object p0, p0, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getZoomCornerRadius(Z)I
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->getDensity()F

    move-result p0

    const/16 p1, 0x16

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    return p0
.end method

.method public initZoomDefaultInfo()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->initDefaultZoomBound()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->initDefaultZoomScaleRect()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->initDefaultZoomScaleRectInHandle()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->initDefaultMiniZoomScaleRect()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;->initDefaultSuperMiniZoomScaleRect()V

    return-void
.end method
