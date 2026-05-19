.class public Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;
.super Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;
.source ""


# static fields
.field private static final CENTENR_REGION:I = 0x5

.field private static final DAMP_PARAM:F

.field private static final DIFF_MAX_DAMP_SCALE:F = 0.13f

.field private static final FULL_MODE:I = 0x3

.field private static final LEFT_CORNER:I = 0x1

.field private static final LEFT_EDGE:I = 0x2

.field private static final MINI_MODE:I = 0x1

.field private static final MIN_OFFSET_TO_EDGE:I = 0x5

.field private static final RIGHT_CORNER:I = 0x3

.field private static final RIGHT_EDGE:I = 0x4

.field private static final SMALL_LIMIT_MODE:I = 0x4

.field private static final UNDEFINED:I = 0x0

.field private static final UNDEFINED_SIDE:I = 0x0

.field private static final ZOOM_MODE:I = 0x2


# instance fields
.field private mActivePointerId:I

.field private mBound:Landroid/graphics/Rect;

.field private mCurrentMode:I

.field private mDragScale:F

.field private mDragScaleRect:Landroid/graphics/Rect;

.field private mDragSide:I

.field private mFullBoundManager:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

.field private mLandScape:Z

.field private mMaxDampScale:F

.field private mMaxScaleInFuLL:F

.field private mMaxScaleInZoom:F

.field private mMaxScaleMiniToZoom:F

.field private mMinDampScale:F

.field private mMinDistanceToScreen:I

.field private mMinScaleInMini:F

.field private mPointerIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRotation:I

.field private mScreenLimitX:I

.field private mScreenLimitY:I

.field private mScreenWidth:I

.field private mStartDragX:I

.field private mStartDragY:I

.field private mStartFromMini:Z

.field private mStartRect:Landroid/graphics/Rect;

.field private mStartScale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v0, v1

    sput v0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->DAMP_PARAM:F

    return-void
.end method

.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;-><init>(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragScaleRect:Landroid/graphics/Rect;

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mCurrentMode:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mActivePointerId:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mPointerIds:Ljava/util/ArrayList;

    new-instance p1, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mFullBoundManager:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->lambda$onUp$2()V

    return-void
.end method

.method private computeDampScale(F)F
    .registers 10

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleInZoom:F

    cmpl-float v1, p1, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    if-lez v1, :cond_2a

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxDampScale:F

    cmpg-float v6, p1, v1

    if-gtz v6, :cond_2a

    sub-float v6, p1, v0

    sub-float v1, v0, v1

    div-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v6, v2

    double-to-float v6, v6

    mul-float/2addr v6, v1

    sub-float/2addr v0, v6

    goto :goto_2b

    :cond_2a
    move v0, p1

    :goto_2b
    iget-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartFromMini:Z

    if-nez v1, :cond_53

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleMiniToZoom:F

    cmpg-float v6, p1, v1

    if-gez v6, :cond_53

    iget p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinDampScale:F

    cmpl-float v6, p1, p0

    if-ltz v6, :cond_53

    sub-float/2addr p1, v1

    sub-float p0, v1, p0

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v6, p1

    sub-double/2addr v6, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sub-double/2addr v4, v2

    double-to-float p1, v4

    mul-float/2addr p1, p0

    sub-float v0, v1, p1

    :cond_53
    return v0
.end method

.method private computeDefalutMaxScaleInFull()F
    .registers 5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mRotation:I

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->isPortScreen(I)Z

    move-result v0

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mLandScape:Z

    invoke-virtual {v1, v2, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitY:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    add-float/2addr v1, v0

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleInZoom:F

    sget v3, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->DAMP_PARAM:F

    iget p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxDampScale:F

    invoke-static {v0, p0, v3, v0}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result p0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private computeDragScale(II)F
    .registers 6

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    goto :goto_2a

    :cond_e
    const/4 p2, 0x4

    if-ne v1, p2, :cond_1c

    iget p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartDragX:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    goto :goto_34

    :cond_1c
    const/4 p2, 0x2

    if-ne v1, p2, :cond_37

    iget p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartDragX:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    goto :goto_34

    :cond_2a
    :goto_2a
    iget p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartDragY:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    :goto_34
    int-to-float p2, p2

    div-float/2addr p1, p2

    add-float/2addr v0, p1

    :cond_37
    invoke-direct {p0, v0}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->computeDampScale(F)F

    move-result p0

    return p0
.end method

.method private computeDragScaleRect(F)Landroid/graphics/Rect;
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_71

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    goto :goto_71

    :cond_e
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    goto :goto_4e

    :cond_15
    const/4 v3, 0x5

    if-ne v1, v3, :cond_92

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v2

    sub-int/2addr v1, v3

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr p1, v4

    float-to-int p1, p1

    add-int/2addr v3, p1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_92

    :cond_4e
    :goto_4e
    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_92

    :cond_71
    :goto_71
    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p0, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_92
    :goto_92
    return-object v0
.end method

.method private computeMaxScaleInFull()F
    .registers 6

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    goto/16 :goto_c0

    :cond_a
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    goto :goto_7f

    :cond_11
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7b

    const/high16 v0, 0x40000000  # 2.0f

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitX:I

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitY:I

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleInZoom:F

    sget v3, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->DAMP_PARAM:F

    iget p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxDampScale:F

    invoke-static {v0, p0, v3, v0}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto/16 :goto_10e

    :cond_7b
    const/high16 p0, 0x3f800000  # 1.0f

    goto/16 :goto_10e

    :cond_7f
    :goto_7f
    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitY:I

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleInZoom:F

    sget v3, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->DAMP_PARAM:F

    iget p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxDampScale:F

    invoke-static {v0, p0, v3, v0}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_10e

    :cond_c0
    :goto_c0
    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitX:I

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitY:I

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleInZoom:F

    sget v3, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->DAMP_PARAM:F

    iget p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxDampScale:F

    invoke-static {v0, p0, v3, v0}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_10e
    return p0
.end method

.method public static synthetic d(Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->lambda$onUp$0()V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->lambda$onUp$3()V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->lambda$onUp$1(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method private isCloseToBorder(F)Z
    .registers 9

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinScaleInMini:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->computeDragScaleRect(F)Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_15

    const/4 v2, 0x4

    if-ne v0, v2, :cond_20

    :cond_15
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitX:I

    iget v5, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinDistanceToScreen:I

    sub-int/2addr v4, v5

    if-lt v2, v4, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    if-eq v0, v3, :cond_26

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2e

    :cond_26
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinDistanceToScreen:I

    if-ge v4, v5, :cond_2e

    move v4, v3

    goto :goto_2f

    :cond_2e
    move v4, v1

    :goto_2f
    const/4 v5, 0x5

    if-ne v0, v5, :cond_4b

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitX:I

    if-gt v5, v6, :cond_4b

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_4b

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinDistanceToScreen:I

    sub-int/2addr v6, v5

    if-ge v0, v6, :cond_49

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v5, :cond_4b

    :cond_49
    move v0, v3

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitY:I

    iget p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinDistanceToScreen:I

    sub-int/2addr v5, p0

    if-le p1, v5, :cond_57

    move p0, v3

    goto :goto_58

    :cond_57
    move p0, v1

    :goto_58
    if-nez v4, :cond_62

    if-nez v2, :cond_62

    if-nez p0, :cond_62

    if-eqz v0, :cond_61

    goto :goto_62

    :cond_61
    return v1

    :cond_62
    :goto_62
    return v3
.end method

.method private synthetic lambda$onUp$0()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    const/4 v1, 0x2

    const/16 v2, 0xc8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->switchState(ILcom/oplus/zoom/common/ZoomPositionInfo;IZ)V

    return-void
.end method

.method private synthetic lambda$onUp$1(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    const/4 v0, 0x2

    const/16 v1, 0xc9

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->switchState(ILcom/oplus/zoom/common/ZoomPositionInfo;IZ)V

    return-void
.end method

.method private synthetic lambda$onUp$2()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->switchState(ILcom/oplus/zoom/common/ZoomPositionInfo;IZ)V

    return-void
.end method

.method private synthetic lambda$onUp$3()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->fullZoom()V

    return-void
.end method

.method private onDown(III)V
    .registers 6

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartDragX:I

    iput p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartDragY:I

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result p1

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartScale:F

    const/4 p2, 0x4

    if-ne p3, p2, :cond_1e

    const/4 p2, 0x1

    iput p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    goto :goto_38

    :cond_1e
    const/4 v0, 0x5

    if-ne p3, v0, :cond_25

    const/4 p2, 0x2

    iput p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    goto :goto_38

    :cond_25
    const/4 v1, 0x6

    if-ne p3, v1, :cond_2c

    const/4 p2, 0x3

    iput p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    goto :goto_38

    :cond_2c
    const/4 v1, 0x7

    if-ne p3, v1, :cond_32

    iput p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    goto :goto_38

    :cond_32
    const/16 p2, 0x8

    if-ne p3, p2, :cond_38

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    :cond_38
    :goto_38
    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragScale:F

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragScaleRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->prepareParameter()V

    return-void
.end method

.method private onScale(II)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->computeDragScale(II)F

    move-result p1

    iget p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleInZoom:F

    cmpl-float v0, p1, p2

    if-lez v0, :cond_c

    const/4 p2, 0x3

    goto :goto_25

    :cond_c
    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleMiniToZoom:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_18

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_18

    const/4 p2, 0x2

    goto :goto_25

    :cond_18
    iget p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinScaleInMini:F

    cmpl-float p2, p1, p2

    if-lez p2, :cond_24

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_24

    const/4 p2, 0x1

    goto :goto_25

    :cond_24
    const/4 p2, 0x4

    :goto_25
    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleInFuLL:F

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinScaleInMini:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragScale:F

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragScaleRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->computeDragScaleRect(F)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    new-instance v0, Lcom/oplus/zoom/common/ZoomPositionInfo;

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragScaleRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragScale:F

    invoke-direct {v0, v1, v2}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->updateSurfacePosition()V

    invoke-direct {p0, p2}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->switchMode(I)V

    return-void
.end method

.method private onUp(II)V
    .registers 12

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mFullBoundManager:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->removeFullBound()V

    iget p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mCurrentMode:I

    const/4 p2, 0x3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_3c

    if-ne p1, v0, :cond_10

    goto :goto_3c

    :cond_10
    if-ne p1, v2, :cond_26

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/reddot/a;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_c7

    :cond_26
    if-ne p1, p2, :cond_c7

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/oplus/zoom/pointerhandler/c;

    invoke-direct {p2, p0}, Lcom/oplus/zoom/pointerhandler/c;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_c7

    :cond_3c
    :goto_3c
    iget-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartFromMini:Z

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/oplus/quickstep/dock/e;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_c7

    :cond_54
    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result v4

    const/high16 v5, 0x3f000000  # 0.5f

    iget v6, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    const/4 v7, 0x0

    if-eq v6, v1, :cond_9f

    if-eq v6, v2, :cond_9f

    const/4 v1, 0x5

    if-ne v6, v1, :cond_83

    iget v6, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v6

    int-to-float v6, v4

    mul-float/2addr v6, v5

    cmpl-float v6, v8, v6

    if-ltz v6, :cond_83

    goto :goto_9f

    :cond_83
    iget v6, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragSide:I

    if-eq v6, p2, :cond_9b

    if-eq v6, v0, :cond_9b

    if-ne v6, v1, :cond_a2

    iget p2, v3, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    add-float/2addr v0, p2

    int-to-float p2, v4

    mul-float/2addr p2, v5

    cmpg-float p2, v0, p2

    if-gez p2, :cond_a2

    :cond_9b
    invoke-virtual {v3, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_a2

    :cond_9f
    :goto_9f
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_a2
    :goto_a2
    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p2

    new-instance v0, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    move-result p1

    invoke-direct {v0, v3, p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    invoke-virtual {p2, v2, v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getAdjustedPosition(ILcom/oplus/zoom/common/ZoomPositionInfo;)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p2

    new-instance v0, Lcom/oplus/splitscreen/e;

    invoke-direct {v0, p0, p1}, Lcom/oplus/splitscreen/e;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    invoke-interface {p2, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method private prepareParameter()V
    .registers 5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result v1

    iput v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenWidth:I

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDensity()F

    move-result v1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomDisplayController;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mRotation:I

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenWidth:I

    iput v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitX:I

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mScreenLimitY:I

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isLandScape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mLandScape:Z

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mBound:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isMiniState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mStartFromMini:Z

    if-eqz v0, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x2

    :goto_4e
    iput v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mCurrentMode:I

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    iget-boolean v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mLandScape:Z

    invoke-virtual {v0, v2}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getMaxZoomScale(Z)F

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleInZoom:F

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    iget-boolean v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mLandScape:Z

    invoke-virtual {v0, v2}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getMaxMiniZoomScale(Z)F

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleMiniToZoom:F

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    iget-boolean v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mLandScape:Z

    invoke-virtual {v0, v2}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getMinMiniZoomScale(Z)F

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinScaleInMini:F

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleInZoom:F

    const v3, 0x3e051eb8  # 0.13f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxDampScale:F

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleMiniToZoom:F

    sub-float v0, v2, v0

    sget v3, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->DAMP_PARAM:F

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinDampScale:F

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->computeDefalutMaxScaleInFull()F

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMaxScaleInFuLL:F

    const/high16 v0, 0x40a00000  # 5.0f

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mMinDistanceToScreen:I

    return-void
.end method

.method private switchMode(I)V
    .registers 8

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mCurrentMode:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x7

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4c

    if-eq p1, v3, :cond_27

    const/4 v5, 0x3

    if-eq p1, v5, :cond_15

    const/4 v5, 0x4

    if-eq p1, v5, :cond_4c

    goto :goto_70

    :cond_15
    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mFullBoundManager:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mDragScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->showFullBound(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    goto :goto_70

    :cond_27
    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mFullBoundManager:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-virtual {v3}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->hideFullBound()V

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v3}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v3}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mCurrentMode:I

    if-ne v1, v4, :cond_70

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    goto :goto_70

    :cond_4c
    iget-object v5, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mFullBoundManager:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-virtual {v5}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->hideFullBound()V

    iget-object v5, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v5}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    iget-object v5, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v5}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mCurrentMode:I

    if-ne v1, v3, :cond_70

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/oplus/zoom/common/ZoomUtil;->performHapticFeedback(Landroid/content/Context;IZ)V

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mCurrentMode:I

    return-void
.end method


# virtual methods
.method public clearState()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->unRegisterInputListener(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;)Z

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mFullBoundManager:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->removeFullBound()V

    return-void
.end method

.method public onInputEvent(Landroid/view/MotionEvent;I)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    const-string v4, "ZoomPointerHandler"

    const/4 v5, 0x1

    if-eqz v0, :cond_9f

    if-eq v0, v5, :cond_91

    const/4 p2, 0x2

    if-eq v0, p2, :cond_88

    const/4 p2, 0x3

    if-eq v0, p2, :cond_91

    const/4 p2, 0x5

    if-eq v0, p2, :cond_7e

    const/4 p2, 0x6

    if-eq v0, p2, :cond_2b

    goto/16 :goto_cd

    :cond_2b
    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mPointerIds:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mPointerIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v5, :cond_cd

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mPointerIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_70

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid pointerId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in onInputEvent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd

    :cond_70
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->onScale(II)V

    goto :goto_cd

    :cond_7e
    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mPointerIds:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    :cond_88
    iget p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mActivePointerId:I

    if-eq v3, p1, :cond_8d

    return v5

    :cond_8d
    invoke-direct {p0, v1, v2}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->onScale(II)V

    goto :goto_cd

    :cond_91
    const p1, 0x7fffffff

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mActivePointerId:I

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mPointerIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v1, v2}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->onUp(II)V

    goto :goto_cd

    :cond_9f
    const-string p1, "onInputEvent down"

    invoke-static {v4, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mActivePointerId:I

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->mPointerIds:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getUiManager()Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/zoom/ui/IZoomUiManager;->hideAllTipsView()V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->registerInputListener(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;)Z

    invoke-direct {p0, v1, v2, p2}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->onDown(III)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoBeforeInput(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :cond_cd
    :goto_cd
    return v5
.end method
