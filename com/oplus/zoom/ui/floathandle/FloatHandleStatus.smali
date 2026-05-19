.class public Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;
    }
.end annotation


# static fields
.field private static final FLOAT_HANDLE_HEIGHT:F = 60.0f

.field private static final FLOAT_HANDLE_WIDTH:F = 65.0f

.field public static final LEFT_SIDE:I = 0x1

.field public static final MODE_FULL:I = 0x2

.field public static final MODE_HALF:I = 0x4

.field public static final MODE_NONE:I = 0x1

.field public static final MODE_UNSET:I = 0x8

.field public static final RIGHT_SIDE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FloatHandle"


# instance fields
.field private mContainerHeight:I

.field private mContext:Landroid/content/Context;

.field private mDistanceOfFling:I

.field private mDistanceToRebound:I

.field private mFloatHandleInfo:Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

.field private mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

.field private mMaxDistanceToScreenInHalfHidden:I

.field private mMaxDistanceToScreenInNone:I

.field private mMovingEdgeLimit:I

.field private mVelocityOfFling:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "debug.zoom.flingX"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mVelocityOfFling:I

    const-string v0, "debug.zoom.distanceX"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mDistanceOfFling:I

    new-instance v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    invoke-direct {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatHandleInfo:Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    new-instance v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$1;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContext:Landroid/content/Context;

    return-void
.end method

.method private loadResource()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->zoom_float_handle_distance_in_half:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mMaxDistanceToScreenInHalfHidden:I

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->zoom_float_handle_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mMaxDistanceToScreenInNone:I

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->zoom_float_handle_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContainerHeight:I

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->distance_to_rebound:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mDistanceToRebound:I

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->LIMIT_EDGE_OF_MOVE_FLOAT_HANDLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mMovingEdgeLimit:I

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->LIMIT_EDGE_OF_FLING_HANDLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mDistanceOfFling:I

    return-void
.end method


# virtual methods
.method public addFloatHandleInfo(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatHandleInfo:Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->copy(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    iget v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->side:I

    const/high16 v1, -0x40800000  # -1.0f

    if-nez v0, :cond_1f

    iget p1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->scaleY:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatHandleInfo:Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    iget v0, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->scaleY:F

    iput v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mScaleLeft:F

    :cond_19
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    const/4 v0, 0x1

    iput v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->side:I

    goto :goto_32

    :cond_1f
    iget p1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->scaleY:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatHandleInfo:Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    iget v0, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->scaleY:F

    iput v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mScaleRight:F

    :cond_2d
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    const/4 v0, 0x2

    iput v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->side:I

    :goto_32
    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->loadResource()V

    return-void
.end method

.method public clearRestoreInfo()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatHandleInfo:Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->zoomPositionInfo:Lcom/oplus/zoom/common/ZoomPositionInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->zoomState:I

    return-void
.end method

.method public getContainerHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContainerHeight:I

    return p0
.end method

.method public getCurrentLockPkg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentUserId()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mUserId:I

    return p0
.end method

.method public getDistanceOfFling()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mDistanceOfFling:I

    return p0
.end method

.method public getDistanceToRebound()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mDistanceToRebound:I

    return p0
.end method

.method public getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatHandleInfo:Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    return-object p0
.end method

.method public getFloatHandleRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 7

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContext:Landroid/content/Context;

    const/high16 p2, 0x42820000  # 65.0f

    invoke-static {p1, p2}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iget-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mContext:Landroid/content/Context;

    const/high16 v0, 0x42700000  # 60.0f

    invoke-static {p2, v0}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    iget v1, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->side:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    iget v0, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mScaleLeft:F

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    neg-int p1, p1

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    add-int/2addr p2, p0

    goto :goto_3d

    :cond_27
    iget v0, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mScaleRight:F

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenWidth()I

    move-result p0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    add-int/2addr p1, p0

    add-int/2addr p2, v0

    move v3, p1

    move p1, p0

    move p0, v0

    move v0, v3

    :goto_3d
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p0, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getMaxDistanceToScreenInHalfHidden()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mMaxDistanceToScreenInHalfHidden:I

    return p0
.end method

.method public getMaxDistanceToScreenInNone()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mMaxDistanceToScreenInNone:I

    return p0
.end method

.method public getMovingEdgeLimit()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mMovingEdgeLimit:I

    return p0
.end method

.method public getScale(I)F
    .registers 3

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    if-ne p1, v0, :cond_8

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mScaleLeft:F

    goto :goto_a

    :cond_8
    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mScaleRight:F

    :goto_a
    return p0
.end method

.method public getScreenHeight()I
    .registers 1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result p0

    return p0
.end method

.method public getScreenWidth()I
    .registers 1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result p0

    return p0
.end method

.method public getVelocityOfFling()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mVelocityOfFling:I

    return p0
.end method

.method public isFloatHandleShow()Z
    .registers 3

    const-string v0, "isFloatHandleShow mPackageName = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    iget-object v1, v1, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatHandle"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mPackageName:Ljava/lang/String;

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->loadResource()V

    return-void
.end method

.method public setCurrentLockPkg(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setCurrentUserId(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mUserId:I

    return-void
.end method

.method public updateFloatHandlePosition(III)V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    int-to-float p1, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mScaleLeft:F

    goto :goto_15

    :cond_f
    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->mFloatViewState:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;

    int-to-float p1, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus$FloatViewState;->mScaleRight:F

    :goto_15
    return-void
.end method
