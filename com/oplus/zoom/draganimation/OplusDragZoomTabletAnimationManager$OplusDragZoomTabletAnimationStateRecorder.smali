.class Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;
.super Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OplusDragZoomTabletAnimationStateRecorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;
    }
.end annotation


# instance fields
.field private mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

.field private mBottomPosition:I

.field private mCurrentTotalCornerRadius:F

.field private mCurrentTotalCrop:Landroid/graphics/Rect;

.field private mCurrentZoomCrop:Landroid/graphics/Rect;

.field private mCurrentZoomScale:F

.field private mFullBottomCrop:Landroid/graphics/Rect;

.field private mFullTopCrop:Landroid/graphics/Rect;

.field private mInitialTotalCrop:Landroid/graphics/Rect;

.field private mMainCurrentDimAlpha:F

.field private mMainCurrentScale:F

.field private mMainLeashCurrentRect:Landroid/graphics/Rect;

.field private mMainLeashPosition:Landroid/graphics/Point;

.field private mRootSplitSurface:Landroid/view/SurfaceControl;

.field private mSideCurrentDimAlpha:F

.field private mSideCurrentScale:F

.field private mSideLeashCurrentRect:Landroid/graphics/Rect;

.field private mSideLeashPosition:Landroid/graphics/Point;

.field private mTopPosition:I

.field private mTotalLeashPosition:Landroid/graphics/Point;

.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mTotalLeashPosition:Landroid/graphics/Point;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCornerRadius:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideLeashCurrentRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideLeashPosition:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainLeashCurrentRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainLeashPosition:Landroid/graphics/Point;

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    invoke-direct {p1, p0, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    return-void
.end method

.method public static synthetic access$1000(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mTotalLeashPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideCurrentScale:F

    return p1
.end method

.method public static synthetic access$1302(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainCurrentScale:F

    return p1
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->getDividePosition(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->startHideDimAnimation()V

    return-void
.end method

.method public static synthetic access$600(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomScale:F

    return p0
.end method

.method public static synthetic access$802(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCornerRadius:F

    return p1
.end method

.method public static synthetic access$900(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method private drawTotalDimSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V
    .registers 13

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p3

    iget-object p4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v1, p4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v1, :cond_18

    iget-object p4, p4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$drawable;->oplus_zoom_to_split_tablet_vertical:I

    invoke-virtual {p4, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_20

    :cond_18
    iget-object p4, p4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$drawable;->oplus_zoom_to_split_tablet:I

    invoke-virtual {p4, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    :goto_20
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    const v3, 0x3d0e8a72  # 0.0348f

    if-eqz v2, :cond_2c

    iget v4, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    goto :goto_2e

    :cond_2c
    iget v4, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    :goto_2e
    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const v4, 0x3cf5c28f  # 0.03f

    if-eqz v2, :cond_39

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    goto :goto_3b

    :cond_39
    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    :goto_3b
    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p4, :cond_5a

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5a
    iget-object p4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v4, p4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    const v5, 0x3b83126f  # 0.004f

    if-eqz v4, :cond_66

    iget v6, p4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    goto :goto_68

    :cond_66
    iget v6, p4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    :goto_68
    int-to-float v6, v6

    mul-float/2addr v6, v5

    const/4 v5, 0x0

    if-eqz v4, :cond_88

    iget p4, p4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    sub-int/2addr p4, v3

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    invoke-virtual {p3, v2, p4, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget p4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    sub-int/2addr p4, v3

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float p0, p0

    sub-float/2addr p0, v6

    int-to-float v1, v1

    sub-float/2addr p0, v1

    invoke-virtual {p3, v2, p4, p0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_a2

    :cond_88
    iget p4, p4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    invoke-virtual {p3, v2, v6, p4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget p4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    int-to-float p4, p4

    sub-float/2addr p4, v6

    int-to-float v3, v3

    sub-float/2addr p4, v3

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {p3, v2, p4, p0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_a2
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    sget-object p0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private getDividePosition(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz p0, :cond_e

    if-eqz p3, :cond_b

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_d

    :cond_b
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    :goto_d
    return p0

    :cond_e
    if-eqz p3, :cond_13

    iget p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_15

    :cond_13
    iget p0, p2, Landroid/graphics/Rect;->right:I

    :goto_15
    return p0
.end method

.method private initialDragAnimation()Z
    .registers 3

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isInNormalSplitScreenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->initialDragAnimationSurface()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->initialSplitAnimationSurface()Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    :cond_1d
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->initialFullAnimationSurface()Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    :cond_24
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->initialTotalAnimationSurface()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v0, :cond_35

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRootSplitId:I

    goto :goto_37

    :cond_35
    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullTaskId:I

    :goto_37
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_maintainSplitToZoomTaskState(IZ)V

    return v0
.end method

.method private initialDragAnimationSurface()Z
    .registers 13

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getTopVisibleTaskId()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragZoomSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentScale()F

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomScale:F

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragZoomSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "drag-dim:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object v2

    iget v2, v2, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "initialDragAnimationSurface"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    const v2, 0x7fffffff

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimScale:F

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimScale:F

    iget v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomScale:F

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v11, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->adjustDimPosition(Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getChildTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_ea

    return v3

    :cond_ea
    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getChildTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->getTopAppPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v10, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initIconDimSurface(Landroid/view/SurfaceControl$Transaction;IILandroid/view/SurfaceControl;Ljava/lang/String;IZ)Z

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    return v0
.end method

.method private initialFullAnimationSurface()Z
    .registers 13

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mLeftPosition:I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mDividerSize:I

    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRightPosition:I

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mTopPosition:I

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    add-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mBottomPosition:I

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRightPosition:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v4, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mTopPosition:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v4, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v5, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mDividerSize:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mBottomPosition:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v4, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getVisibleStandardFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCompactModeTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    :cond_78
    if-eqz v0, :cond_163

    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v1, :cond_80

    goto/16 :goto_163

    :cond_80
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullTaskId:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "full-leash"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "initialFullAnimation"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v3, v1, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragZoomSurface:Landroid/view/SurfaceControl;

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v4, -0x3

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v4, "drag-dim:"

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    const v4, 0x7fffffff

    invoke-virtual {v2, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCorner:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimAlpha:F

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v6, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v7, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->getTopAppPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v9

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget v10, p0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initIconDimSurface(Landroid/view/SurfaceControl$Transaction;IILandroid/view/SurfaceControl;Ljava/lang/String;IZ)Z

    move-result p0

    if-nez p0, :cond_161

    return v3

    :cond_161
    const/4 p0, 0x1

    return p0

    :cond_163
    :goto_163
    return v3
.end method

.method private initialMainSurface()Z
    .registers 10

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainTopSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopSurface:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainCurrentCornerRadius:F

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainLeashCurrentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainLeashPosition:Landroid/graphics/Point;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_4e

    return v4

    :cond_4e
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopId:I

    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$102(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;F)F

    goto :goto_83

    :cond_6d
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$002(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;F)F

    :goto_83
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainCurrentScale:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainCurrentDimAlpha:F

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_137

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_93

    goto/16 :goto_137

    :cond_93
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "main-leash"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "initialMainSurface"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v1, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainLeashCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v3, -0x3

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "main-dim"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainCurrentDimAlpha:F

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/high16 v8, -0x1000000

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initDimSurfaceBuffer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;III)V

    const/4 p0, 0x1

    return p0

    :cond_137
    :goto_137
    return v4
.end method

.method private initialSideSurface()Z
    .registers 11

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideTopSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideCurrentCornerRadius:F

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_32

    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    :cond_32
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideLeashCurrentRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideLeashPosition:Landroid/graphics/Point;

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_69

    return v5

    :cond_69
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopId:I

    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$002(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;F)F

    goto :goto_9e

    :cond_88
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$102(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;F)F

    :goto_9e
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideCurrentScale:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideCurrentDimAlpha:F

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_151

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_ae

    goto/16 :goto_151

    :cond_ae
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "side-leash"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "initialSideSurface"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v1, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideLeashCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v4, -0x3

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v4, "side-dim"

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v1, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideCurrentDimAlpha:F

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/high16 v9, -0x1000000

    invoke-virtual/range {v4 .. v9}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initDimSurfaceBuffer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;III)V

    return v2

    :cond_151
    :goto_151
    return v5
.end method

.method private initialSplitAnimationSurface()Z
    .registers 3

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->initialTotalSurface()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->initialSideSurface()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->initialMainSurface()Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_17
    return v1
.end method

.method private initialTotalAnimationSurface()V
    .registers 10

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    const v2, 0x3dcccccd  # 0.1f

    if-le v1, v0, :cond_d

    int-to-float v0, v1

    goto :goto_e

    :cond_d
    int-to-float v0, v0

    :goto_e
    mul-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "total-animation-dim"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "initialTotalAnimationSurface"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_64

    :cond_59
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_64
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    iget v6, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v7, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    const/high16 v8, -0x1000000

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initDimSurfaceBuffer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;III)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->isInRemindMode()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->drawTotalDimSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    :cond_99
    return-void
.end method

.method private initialTotalSurface()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mTotalLeashPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRootSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mRootSplitSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_25

    return v3

    :cond_25
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRootTaskId()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRootSplitId:I

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "total-leash"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "initialSplitAnimationSurface"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragZoomSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mRootSplitSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x1

    return p0
.end method

.method private startHideDimAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setMaintainLayerTask(IZ)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_36

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$5;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$5;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$6;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$6;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_36
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startTransferToNormalAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 13

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v7, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$1;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$2;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$2;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_32
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startTransferToSplitAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 13

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v7, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$3;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_32
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public finishDragAnimationUnCheck()V
    .registers 4

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    if-eqz v0, :cond_3c

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v0, "finishGestureAnimation:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    const-string v2, "OplusDragZoomTabletAnimationManager"

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->resetAnimationSurface()V

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2b

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x13

    if-ne v0, v1, :cond_39

    :cond_2b
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->isInRemindMode()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->setRemindMode(I)V

    :cond_39
    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->resetAllState()V

    :cond_3c
    return-void
.end method

.method public finishGestureAnimation()V
    .registers 4

    const-string v0, "###finishGestureAnimation mFinishGestureAnimation:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFinishGestureAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentAnimationState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v2, "OplusDragZoomTabletAnimationManager"

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFinishGestureAnimation:Z

    if-nez v0, :cond_59

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFinishGestureAnimation:Z

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->isCurrentAnimationRun()Z

    move-result v0

    if-nez v0, :cond_59

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_56

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    goto :goto_56

    :cond_2f
    const/16 v1, 0xd

    if-eq v0, v1, :cond_52

    const/16 v1, 0xf

    if-eq v0, v1, :cond_52

    const/16 v1, 0x11

    if-eq v0, v1, :cond_52

    const/16 v1, 0x13

    if-ne v0, v1, :cond_40

    goto :goto_52

    :cond_40
    const/4 v1, 0x5

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4e

    const/16 v1, 0xb

    if-ne v0, v1, :cond_59

    :cond_4e
    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->transferToNormal(I)V

    goto :goto_59

    :cond_52
    :goto_52
    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->transferToSplit(I)V

    goto :goto_59

    :cond_56
    :goto_56
    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->finishDragAnimationUnCheck()V

    :cond_59
    :goto_59
    return-void
.end method

.method public prepareToNormalAnimation()V
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-boolean v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mTotalLeashPosition:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    goto :goto_38

    :cond_29
    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    :goto_38
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->startTransferToNormalAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public prepareTransferAnimation(I)V
    .registers 42

    move-object/from16 v0, p0

    move/from16 v15, p1

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    invoke-virtual {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->cancleCurrentAnimation()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x4

    const/high16 v2, 0x42040000  # 33.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    if-eq v15, v1, :cond_218

    const/4 v1, 0x6

    const/4 v6, 0x0

    if-eq v15, v1, :cond_187

    const/16 v1, 0x8

    if-eq v15, v1, :cond_106

    const/16 v1, 0xa

    if-eq v15, v1, :cond_187

    const/16 v1, 0xc

    if-eq v15, v1, :cond_106

    const/16 v1, 0xe

    if-eq v15, v1, :cond_99

    const/16 v1, 0x10

    if-eq v15, v1, :cond_4c

    const/16 v1, 0x12

    if-eq v15, v1, :cond_99

    const/16 v1, 0x14

    if-eq v15, v1, :cond_4c

    goto/16 :goto_226

    :cond_4c
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitWidth:I

    sub-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v9, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitWidth:I

    add-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    iget v8, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitHeight:I

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-nez v1, :cond_81

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v1, :cond_7b

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    invoke-virtual {v13, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_cd

    :cond_7b
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v13, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_cd

    :cond_81
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_92

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F

    move-result v1

    goto/16 :goto_fa

    :cond_92
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F

    move-result v1

    goto :goto_e8

    :cond_99
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitWidth:I

    sub-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v9, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitWidth:I

    add-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    iget v8, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitHeight:I

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-nez v1, :cond_d9

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v1, :cond_c8

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    invoke-virtual {v13, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_cd

    :cond_c8
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v13, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_cd
    move v8, v3

    move/from16 v17, v8

    move/from16 v20, v17

    move/from16 v29, v20

    move v6, v4

    move/from16 v26, v6

    goto/16 :goto_241

    :cond_d9
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_f4

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F

    move-result v1

    :goto_e8
    move/from16 v17, v1

    move v8, v3

    move/from16 v26, v8

    move/from16 v29, v26

    move v6, v4

    move/from16 v20, v6

    goto/16 :goto_241

    :cond_f4
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F

    move-result v1

    :goto_fa
    move/from16 v20, v1

    move v8, v3

    move/from16 v26, v8

    move/from16 v29, v26

    move v6, v4

    move/from16 v17, v6

    goto/16 :goto_241

    :cond_106
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-nez v1, :cond_14b

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v7, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v7, :cond_130

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v13, v6, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    neg-int v1, v1

    invoke-virtual {v12, v6, v1}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1cd

    :cond_130
    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v13, v1, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    neg-int v1, v1

    invoke-virtual {v12, v1, v6}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1cd

    :cond_14b
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v7, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v7, :cond_16c

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v11, v6, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    neg-int v1, v1

    invoke-virtual {v14, v6, v1}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_216

    :cond_16c
    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v11, v1, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    neg-int v1, v1

    invoke-virtual {v14, v1, v6}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_216

    :cond_187
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-nez v1, :cond_1d9

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v1, :cond_1b2

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v8, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    sub-int/2addr v7, v8

    invoke-virtual {v13, v6, v6, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    invoke-virtual {v12, v6, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1cd

    :cond_1b2
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    sub-int/2addr v1, v7

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v13, v6, v6, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    invoke-virtual {v12, v1, v6}, Landroid/graphics/Point;->set(II)V

    :goto_1cd
    move/from16 v29, v2

    move v6, v3

    move v8, v6

    move/from16 v17, v8

    move/from16 v20, v17

    move/from16 v26, v20

    goto/16 :goto_241

    :cond_1d9
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v1, :cond_1fb

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v8, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    sub-int/2addr v7, v8

    invoke-virtual {v11, v6, v6, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    invoke-virtual {v14, v6, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_216

    :cond_1fb
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    sub-int/2addr v1, v7

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v11, v6, v6, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    invoke-virtual {v14, v1, v6}, Landroid/graphics/Point;->set(II)V

    :goto_216
    move v1, v2

    goto :goto_237

    :cond_218
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-nez v1, :cond_231

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v13, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_226
    move v6, v3

    move v8, v6

    move/from16 v17, v8

    move/from16 v20, v17

    move/from16 v26, v20

    move/from16 v29, v26

    goto :goto_241

    :cond_231
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v1, v3

    :goto_237
    move v8, v1

    move v6, v3

    move/from16 v26, v6

    move/from16 v29, v26

    move/from16 v17, v4

    move/from16 v20, v17

    :goto_241
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    sub-float v1, v6, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v1, v3, v7

    if-lez v1, :cond_24e

    goto :goto_24f

    :cond_24e
    move v3, v7

    :goto_24f
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v10, v10, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitWidth:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v1, v9

    cmpl-float v9, v3, v1

    if-lez v9, :cond_275

    goto :goto_276

    :cond_275
    move v3, v1

    :goto_276
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v10, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v10, v10, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitHeight:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    div-float v10, v1, v9

    cmpl-float v1, v3, v10

    if-lez v1, :cond_29d

    goto :goto_29e

    :cond_29d
    move v3, v10

    :goto_29e
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCornerRadius:F

    sub-float v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v16, v1, v2

    cmpl-float v1, v3, v16

    if-lez v1, :cond_2ad

    goto :goto_2af

    :cond_2ad
    move/from16 v3, v16

    :goto_2af
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v1, :cond_2cc

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v9, v9, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    div-int/lit8 v9, v9, 0x2

    goto :goto_2e2

    :cond_2cc
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v9, v9, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    div-int/lit8 v9, v9, 0x2

    :goto_2e2
    int-to-float v9, v9

    div-float v19, v1, v9

    cmpl-float v1, v3, v19

    if-lez v1, :cond_2ea

    goto :goto_2ec

    :cond_2ea
    move/from16 v3, v19

    :goto_2ec
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v1, :cond_2fe

    iget v1, v14, Landroid/graphics/Point;->y:I

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mTotalLeashPosition:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_309

    :cond_2fe
    iget v1, v14, Landroid/graphics/Point;->x:I

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mTotalLeashPosition:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :goto_309
    int-to-float v1, v1

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v9, v9, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    int-to-float v9, v9

    div-float v22, v1, v9

    cmpl-float v1, v3, v22

    if-lez v1, :cond_316

    goto :goto_318

    :cond_316
    move/from16 v3, v22

    :goto_318
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideCurrentScale:F

    sub-float v1, v17, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-boolean v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v9, :cond_32b

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-static {v9}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F

    move-result v9

    goto :goto_331

    :cond_32b
    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-static {v9}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$100(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F

    move-result v9

    :goto_331
    sub-float v9, v4, v9

    div-float v23, v1, v9

    cmpl-float v1, v3, v23

    if-lez v1, :cond_33a

    goto :goto_33c

    :cond_33a
    move/from16 v3, v23

    :goto_33c
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainCurrentScale:F

    sub-float v1, v20, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-boolean v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v9, :cond_34f

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-static {v9}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$100(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F

    move-result v9

    goto :goto_355

    :cond_34f
    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-static {v9}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F

    move-result v9

    :goto_355
    sub-float/2addr v4, v9

    div-float v24, v1, v4

    cmpl-float v1, v3, v24

    if-lez v1, :cond_35d

    goto :goto_35f

    :cond_35d
    move/from16 v3, v24

    :goto_35f
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v1, :cond_387

    iget v1, v13, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    goto :goto_3a8

    :cond_387
    iget v1, v13, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, v13, Landroid/graphics/Rect;->right:I

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    :goto_3a8
    int-to-float v4, v4

    div-float v25, v1, v4

    cmpl-float v1, v3, v25

    if-lez v1, :cond_3b0

    goto :goto_3b2

    :cond_3b0
    move/from16 v3, v25

    :goto_3b2
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimAlpha:F

    sub-float v1, v26, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v28

    cmpl-float v1, v3, v28

    if-lez v1, :cond_3bf

    goto :goto_3c1

    :cond_3bf
    move/from16 v3, v28

    :goto_3c1
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCorner:F

    sub-float v1, v29, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v31, v1, v2

    cmpl-float v1, v3, v31

    if-lez v1, :cond_3d0

    goto :goto_3d2

    :cond_3d0
    move/from16 v3, v31

    :goto_3d2
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-boolean v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v1, :cond_3e4

    iget v1, v12, Landroid/graphics/Point;->y:I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_3ef

    :cond_3e4
    iget v1, v12, Landroid/graphics/Point;->x:I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :goto_3ef
    int-to-float v1, v1

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    int-to-float v2, v2

    div-float v34, v1, v2

    cmpl-float v1, v3, v34

    if-lez v1, :cond_3fe

    move/from16 v35, v3

    goto :goto_400

    :cond_3fe
    move/from16 v35, v34

    :goto_400
    new-instance v4, Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    invoke-direct {v4, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCrop:Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Point;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mTotalLeashPosition:Landroid/graphics/Point;

    invoke-direct {v9, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Point;

    move-object/from16 v32, v2

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    invoke-direct {v1, v2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    const/high16 v2, 0x43160000  # 150.0f

    mul-float v2, v2, v35

    float-to-int v2, v2

    if-eqz v2, :cond_475

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    move-object/from16 v33, v18

    move/from16 v36, v2

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    move-object/from16 v37, v3

    move v3, v2

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCornerRadius:F

    move-object/from16 v38, v9

    move v9, v2

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideCurrentScale:F

    move/from16 v18, v2

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainCurrentScale:F

    move/from16 v21, v2

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimAlpha:F

    move/from16 v27, v2

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCorner:F

    move/from16 v30, v2

    move v2, v6

    move-object v6, v4

    move v4, v7

    move v7, v10

    move/from16 v10, v16

    move-object/from16 v39, v12

    move-object/from16 v12, v32

    move-object/from16 v32, v13

    move/from16 v13, v19

    move-object/from16 v15, v38

    move/from16 v16, v22

    move/from16 v19, v23

    move/from16 v22, v24

    move-object/from16 v23, v32

    move-object/from16 v24, v37

    move-object/from16 v32, v39

    move/from16 v37, p1

    invoke-virtual/range {v1 .. v37}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->prepareNextAnimation(FFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFII)V

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->startNextAnimation()V

    goto :goto_49c

    :cond_475
    add-int/lit8 v1, p1, -0x1

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v1, "not need animation mCurrentAnimationState="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v3, "OplusDragZoomTabletAnimationManager"

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_49c

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->isInRemindMode()Z

    move-result v1

    if-eqz v1, :cond_499

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result v1

    if-eqz v1, :cond_49c

    :cond_499
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->finishDragAnimationUnCheck()V

    :cond_49c
    :goto_49c
    return-void
.end method

.method public prepareZoomToSplitAnimation()V
    .registers 22

    move-object/from16 v8, p0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    const/16 v1, 0x13

    const/16 v2, 0x11

    const/16 v3, 0xf

    const/16 v4, 0xd

    const/4 v11, 0x0

    if-eqz v0, :cond_fe

    iget v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    if-eq v0, v4, :cond_92

    if-ne v0, v2, :cond_21

    goto/16 :goto_92

    :cond_21
    if-eq v0, v3, :cond_25

    if-ne v0, v1, :cond_16b

    :cond_25
    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_2c

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    goto :goto_2e

    :cond_2c
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    :goto_2e
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-boolean v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_39

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    goto :goto_3b

    :cond_39
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    :goto_3b
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v11, v11, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_4f

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_57

    :cond_4f
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_57
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-boolean v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_66

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_6e

    :cond_66
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v1

    :goto_6e
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_7a

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    goto :goto_7c

    :cond_7a
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    :goto_7c
    iput-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_83

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    goto :goto_85

    :cond_83
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    :goto_85
    iput-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8c

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    goto :goto_8e

    :cond_8c
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    :goto_8e
    iput-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    goto/16 :goto_16b

    :cond_92
    :goto_92
    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_99

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    goto :goto_9b

    :cond_99
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    :goto_9b
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-boolean v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_a6

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    goto :goto_a8

    :cond_a6
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    :goto_a8
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v11, v11, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_bc

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_c4

    :cond_bc
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_c4
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-boolean v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_d3

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_db

    :cond_d3
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v1

    :goto_db
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_e7

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    goto :goto_e9

    :cond_e7
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    :goto_e9
    iput-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    goto :goto_f2

    :cond_f0
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    :goto_f2
    iput-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f9

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    goto :goto_fb

    :cond_f9
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    :goto_fb
    iput-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    goto :goto_16b

    :cond_fe
    iget v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    if-ne v0, v4, :cond_11b

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v11, v11, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_16b

    :cond_11b
    if-ne v0, v3, :cond_136

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v11, v11, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_16b

    :cond_136
    if-ne v0, v2, :cond_151

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v11, v11, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_16b

    :cond_151
    if-ne v0, v1, :cond_16b

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v11, v11, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Point;->set(II)V

    :cond_16b
    :goto_16b
    new-instance v12, Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v12, v11, v11, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragSurfacePosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v13, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    float-to-int v14, v1

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v11, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x7534

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-boolean v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v1, :cond_1bc

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    goto :goto_1be

    :cond_1bc
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    :goto_1be
    iget-object v2, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v13

    int-to-float v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x42200000  # 40.0f

    iget v3, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    mul-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget-object v2, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v15

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    const/high16 v17, 0x3f800000  # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000  # 1.0f

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v20}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    iget-object v4, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    iget-object v6, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v0, p0

    move-object v5, v12

    invoke-virtual/range {v0 .. v7}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->adjustDimPosition(Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v11}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->requestChangeZoomTask(IZ)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v8, v9, v12, v10, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->startTransferToSplitAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public resetAllState()V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRootSplitId:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullTaskId:I

    :goto_9
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_maintainSplitToZoomTaskState(IZ)V

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragZoomSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimScale:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentZoomScale:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullTaskId:I

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mLeftPosition:I

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRightPosition:I

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    invoke-virtual {v4, v1, v1}, Landroid/graphics/Point;->set(II)V

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCorner:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimAlpha:F

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mInitialTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mTotalLeashPosition:Landroid/graphics/Point;

    invoke-virtual {v4, v1, v1}, Landroid/graphics/Point;->set(II)V

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mCurrentTotalCornerRadius:F

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mRootSplitSurface:Landroid/view/SurfaceControl;

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRootSplitId:I

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopId:I

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideLeashCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideLeashPosition:Landroid/graphics/Point;

    invoke-virtual {v4, v1, v1}, Landroid/graphics/Point;->set(II)V

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideCurrentScale:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mSideCurrentDimAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideCurrentCornerRadius:F

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopSurface:Landroid/view/SurfaceControl;

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopId:I

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainLeashCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainLeashPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainCurrentScale:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mMainCurrentDimAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainCurrentCornerRadius:F

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFinishGestureAnimation:Z

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    return-void
.end method

.method public resetAnimationSurface()V
    .registers 10

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_26
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_39
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4c
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5f
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mRootSplitSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->mRootSplitSurface:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    :cond_7f
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_88
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x13

    const/16 v3, 0x11

    const/16 v4, 0xf

    const/16 v5, 0xd

    const/4 v6, 0x1

    if-eqz v0, :cond_c9

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c0

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    if-eq v0, v5, :cond_b2

    if-eq v0, v4, :cond_b2

    if-eq v0, v3, :cond_b2

    if-ne v0, v2, :cond_b0

    goto :goto_b2

    :cond_b0
    move v0, v6

    goto :goto_b3

    :cond_b2
    :goto_b2
    move v0, v1

    :goto_b3
    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v1, v8, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    :cond_c0
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_c9
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_108

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_ff

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_ff

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_e7

    iget v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    if-eq v7, v5, :cond_ef

    if-eq v7, v3, :cond_ef

    :cond_e7
    if-nez v0, :cond_f1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    if-eq v0, v4, :cond_ef

    if-ne v0, v2, :cond_f1

    :cond_ef
    move v0, v1

    goto :goto_f2

    :cond_f1
    move v0, v6

    :goto_f2
    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_ff
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_108
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_138

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_138

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_11a

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    if-eq v2, v4, :cond_122

    :cond_11a
    if-nez v0, :cond_121

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    if-ne v0, v5, :cond_121

    goto :goto_122

    :cond_121
    move v1, v6

    :cond_122
    :goto_122
    if-eqz v1, :cond_12f

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_12f
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_138
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public startGestureAnimation()V
    .registers 4

    const-string v0, "OplusDragZoomTabletAnimationManager"

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    if-nez v1, :cond_50

    const/4 v1, 0x1

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->resetAllState()V

    :try_start_c
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->initialDragAnimation()Z

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->vibrateWidthSpecilEffect(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialDragAnimation over:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->finishDragAnimationUnCheck()V

    goto :goto_50

    :cond_34
    const/4 v1, 0x2

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_50

    :catch_38
    move-exception v1

    const/4 v2, 0x0

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###drag zoom error:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    :goto_50
    return-void
.end method

.method public transferToNormal(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->prepareToNormalAnimation()V

    return-void
.end method

.method public transferToSplit(I)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setMaintainLayerTask(IZ)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->prepareZoomToSplitAnimation()V

    return-void
.end method
