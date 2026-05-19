.class public Lcom/android/wm/shell/splitscreen/OplusZoomInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ZOOM_LANDSCAPE_RATIO:F = 1.4444444f

.field private static final ZOOM_RATIO:F = 1.6666666f


# instance fields
.field private mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

.field private mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

.field private mLongSide:I

.field private mShortSide:I

.field private mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

.field private mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->initialZoomInfo(II)V

    return-void
.end method

.method private initialZoomInfo(II)V
    .registers 7

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mLongSide:I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result p1

    const p2, 0x3fd55555

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFlipDevice()Z

    move-result p1

    if-nez p1, :cond_4d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v2, v1

    div-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v2, v1

    div-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v2, v1

    div-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v1, p0

    div-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p1, v0, v0, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_78

    :cond_4d
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v2, v1

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v2, v1

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v2, v1

    const v3, 0x3fb8e38e

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v1, p0

    mul-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p1, v0, v0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_78
    return-void
.end method


# virtual methods
.method public getHorizontalAppInHorizontalScreenBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getHorizontalAppInVerticalScreenBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getVerticalAppInHorizontalScreenBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getVerticalAppInVerticalScreenBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getZoomRect(IIZ)Landroid/graphics/Rect;
    .registers 4

    if-gt p1, p2, :cond_a

    if-nez p3, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_a
    if-nez p3, :cond_f

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_f
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getZoomScale(IIZ)F
    .registers 4

    if-nez p3, :cond_c

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultZoomScale(Z)F

    move-result p0

    return p0

    :cond_c
    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultZoomScale(Z)F

    move-result p0

    return p0
.end method

.method public isFixedOrientationLandscape(Lcom/android/wm/shell/splitscreen/StageTaskListener;)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, -0x2

    if-eqz p1, :cond_41

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_41

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_41

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    sub-int/2addr v2, p0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_41

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    const/4 v2, -0x1

    if-eqz v1, :cond_31

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_31

    if-eq v1, v2, :cond_31

    goto :goto_32

    :cond_31
    move v1, v0

    :goto_32
    if-ne v1, v0, :cond_40

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq p1, v0, :cond_40

    if-eq p1, v2, :cond_40

    move v0, p1

    goto :goto_41

    :cond_40
    move v0, v1

    :cond_41
    :goto_41
    if-eqz v0, :cond_50

    const/4 p1, 0x6

    if-eq v0, p1, :cond_50

    const/16 p1, 0x8

    if-eq v0, p1, :cond_50

    const/16 p1, 0xb

    if-ne v0, p1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 p0, 0x0

    :cond_50
    :goto_50
    return p0
.end method
