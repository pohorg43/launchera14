.class Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;
.super Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OplusDragZoomPhoneAnimationStateRecorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;
    }
.end annotation


# instance fields
.field private mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

.field private mBottomPosition:I

.field private mCurrentSplitCrop:Landroid/graphics/Rect;

.field private mFullBottomCrop:Landroid/graphics/Rect;

.field private mFullTopCrop:Landroid/graphics/Rect;

.field private mInitialSplitCrop:Landroid/graphics/Rect;

.field private mRootSplitSurface:Landroid/view/SurfaceControl;

.field private mSplitCornerRadius:F

.field private mSplitDimAlpha:F

.field private mSplitLeashPosition:Landroid/graphics/Point;

.field private mTopPosition:I

.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitLeashPosition:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mInitialSplitCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mCurrentSplitCrop:Landroid/graphics/Rect;

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    invoke-direct {p1, p0, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    return-void
.end method

.method public static synthetic access$1000(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mCurrentSplitCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitLeashPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)I
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->getDividePosition()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;I)Landroid/view/SurfaceControl;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->createAndShowDividerPlaceHolder(I)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->startHideDimAnimation()V

    return-void
.end method

.method public static synthetic access$702(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitDimAlpha:F

    return p1
.end method

.method public static synthetic access$802(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitCornerRadius:F

    return p1
.end method

.method public static synthetic access$900(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mInitialSplitCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method private createAndShowDividerPlaceHolder(I)Landroid/view/SurfaceControl;
    .registers 12

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object v0

    if-eqz v0, :cond_d0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_d0

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v0

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/splitscreen/DividerUtils;->getDividerSize(Landroid/content/res/Resources;)I

    move-result v3

    if-eqz v0, :cond_39

    move v4, v3

    goto :goto_3d

    :cond_39
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    :goto_3d
    if-eqz v0, :cond_44

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_45

    :cond_44
    move v5, v3

    :goto_45
    if-eqz v0, :cond_49

    move v6, p1

    goto :goto_4b

    :cond_49
    iget v6, v2, Landroid/graphics/Rect;->left:I

    :goto_4b
    if-eqz v0, :cond_50

    iget v7, v2, Landroid/graphics/Rect;->top:I

    goto :goto_51

    :cond_50
    move v7, p1

    :goto_51
    new-instance v8, Landroid/view/SurfaceControl$Builder;

    new-instance v9, Landroid/view/SurfaceSession;

    invoke-direct {v9}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {v8, v9}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v9, "drag-dim:divider"

    invoke-virtual {v8, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v8, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const v1, 0x7ffffffe

    invoke-virtual {p0, v8, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, v8, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_d2

    invoke-virtual {p0, v8, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    int-to-float v1, v6

    int-to-float v4, v7

    invoke-virtual {p0, v8, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAndShowDividerPlaceHolder, bounds1="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLandscape="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dividerWidth="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", posX="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", posY="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dividerPosition="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusDragZoomPhoneAnimationManager"

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    :cond_d0
    const/4 v8, 0x0

    :goto_d1
    return-object v8

    :array_d2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private drawTotalDimSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V
    .registers 16

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v2, :cond_12

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_12
    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v3, :cond_1d

    sget v3, Lcom/android/wm/shell/R$drawable;->oplus_replace_split:I

    goto :goto_1f

    :cond_1d
    sget v3, Lcom/android/wm/shell/R$drawable;->oplus_zoom_to_split:I

    :goto_1f
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x3d2c0831  # 0.042f

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-boolean v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v5, :cond_2f

    iget v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    goto :goto_31

    :cond_2f
    iget v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    :goto_31
    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget-boolean v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v4, :cond_3d

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000  # 1.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :cond_3d
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_59

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_59
    iget-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    const v5, 0x3d808312  # 0.06275f

    const v6, 0x3c916873  # 0.01775f

    const v7, 0x3dae147b  # 0.085f

    const v8, 0x3d0b4396  # 0.034f

    const/4 v9, 0x0

    if-nez v2, :cond_a8

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-boolean p4, p3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz p4, :cond_91

    iget p4, p3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float v2, p4

    mul-float/2addr v2, v6

    int-to-float p4, p4

    mul-float/2addr p4, v5

    iget p3, p3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    sub-int/2addr p3, v3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-virtual {v1, v4, p3, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget p3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    sub-int/2addr p3, v3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float p0, p0

    sub-float/2addr p0, p4

    int-to-float p4, v3

    sub-float/2addr p0, p4

    invoke-virtual {v1, v4, p3, p0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_ef

    :cond_91
    iget p4, p3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    int-to-float p4, p4

    mul-float/2addr p4, v8

    iget p3, p3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float p3, p3

    mul-float/2addr p3, v7

    invoke-virtual {v1, v4, p4, p3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    int-to-float p0, p0

    sub-float/2addr p0, p4

    int-to-float p4, v3

    sub-float/2addr p0, p4

    invoke-virtual {v1, v4, p0, p3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_ef

    :cond_a8
    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-boolean v10, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v10, :cond_d4

    iget p3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float v7, p3

    mul-float/2addr v7, v6

    int-to-float p3, p3

    mul-float/2addr p3, v5

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v5, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-ge p0, v5, :cond_c6

    iget p0, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    sub-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {v1, v4, p0, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_ef

    :cond_c6
    iget p0, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    sub-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    int-to-float p4, p4

    sub-float/2addr p4, p3

    int-to-float p3, v3

    sub-float/2addr p4, p3

    invoke-virtual {v1, v4, p0, p4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_ef

    :cond_d4
    iget p4, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    int-to-float p4, p4

    mul-float/2addr p4, v8

    iget v5, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-ge p0, v2, :cond_e8

    invoke-virtual {v1, v4, p4, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_ef

    :cond_e8
    int-to-float p0, p3

    sub-float/2addr p0, p4

    int-to-float p3, v3

    sub-float/2addr p0, p3

    invoke-virtual {v1, v4, p0, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_ef
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

.method private getDividePosition()I
    .registers 3

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_19

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    goto :goto_19

    :cond_b
    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0

    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method private initialDragAnimation()Z
    .registers 3

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isInNormalSplitScreenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->initialDragAnimationSurface()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->initialSplitAnimationSurface()Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    :cond_1d
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->initialFullAnimationSurface()Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    :cond_24
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->initialTotalAnimationSurface()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getTopVisibleTaskId()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragZoomSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentScale()F

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v11, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object v4, p0

    move-object v9, v10

    invoke-virtual/range {v4 .. v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->adjustDimPosition(Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getChildTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_e0

    return v3

    :cond_e0
    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getChildTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->getTopAppPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v10, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initIconDimSurface(Landroid/view/SurfaceControl$Transaction;IILandroid/view/SurfaceControl;Ljava/lang/String;IZ)Z

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mDividerSize:I

    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRightPosition:I

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mTopPosition:I

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    add-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mBottomPosition:I

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRightPosition:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget v4, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mTopPosition:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget v4, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v5, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mDividerSize:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mBottomPosition:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget v4, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getVisibleStandardFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v3, v1, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v6, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v7, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->getTopAppPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v9

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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
    .registers 7

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainTopSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitDimAlpha:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitCornerRadius:F

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitLeashPosition:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_116

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_116

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_54

    goto/16 :goto_116

    :cond_54
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "main-leash"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "initialMainSurface"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v1, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v4, -0x3

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v4, "main-dim"

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mInitialSplitCrop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mCurrentSplitCrop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mInitialSplitCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitDimAlpha:F

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->drawTotalDimSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    const/4 p0, 0x1

    return p0

    :cond_116
    :goto_116
    return v3
.end method

.method private initialSideSurface()Z
    .registers 7

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideTopSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitDimAlpha:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitCornerRadius:F

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitLeashPosition:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_116

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_116

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_54

    goto/16 :goto_116

    :cond_54
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "side-leash"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "initialSideSurface"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v1, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v4, -0x3

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v4, "side-dim"

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mInitialSplitCrop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mCurrentSplitCrop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mInitialSplitCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitDimAlpha:F

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->drawTotalDimSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    const/4 p0, 0x1

    return p0

    :cond_116
    :goto_116
    return v3
.end method

.method private initialSplitAnimationSurface()Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRootSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mRootSplitSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRootTaskId()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRootSplitId:I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x1

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2f

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    :cond_2f
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-boolean v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-gt v2, v4, :cond_49

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_71

    goto :goto_73

    :cond_49
    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_73

    goto :goto_71

    :cond_54
    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-gt v2, v4, :cond_67

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_71

    goto :goto_73

    :cond_67
    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_73

    :cond_71
    :goto_71
    move v0, v3

    goto :goto_74

    :cond_73
    :goto_73
    move v0, v1

    :goto_74
    if-eqz v0, :cond_7d

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->initialSideSurface()Z

    move-result p0

    if-nez p0, :cond_84

    return v3

    :cond_7d
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->initialMainSurface()Z

    move-result p0

    if-nez p0, :cond_84

    return v3

    :cond_84
    return v1
.end method

.method private initialTotalAnimationSurface()V
    .registers 10

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    iget-boolean v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mRootSplitSurface:Landroid/view/SurfaceControl;

    goto :goto_57

    :cond_55
    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    :goto_57
    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    iget v6, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v7, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    const/high16 v8, -0x1000000

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initDimSurfaceBuffer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;III)V

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->drawTotalDimSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    :cond_8c
    return-void
.end method

.method private startHideDimAnimation()V
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setZoomTransferToSplitAnimating(Z)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setMaintainLayerTask(IZ)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$5;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$5;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$6;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$6;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_3c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startTransferToNormalAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$1;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$2;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$2;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startTransferToSplitAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 21

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_42

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v11, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$3;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$3;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p5

    move-object v6, p3

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_42
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public finishDragAnimationUnCheck()V
    .registers 4

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    if-eqz v0, :cond_1c

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v0, "finishGestureAnimation:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    const-string v2, "OplusDragZoomPhoneAnimationManager"

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->resetAnimationSurface()V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->resetAllState()V

    :cond_1c
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

    const-string v2, "OplusDragZoomPhoneAnimationManager"

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFinishGestureAnimation:Z

    if-nez v0, :cond_44

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFinishGestureAnimation:Z

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->isCurrentAnimationRun()Z

    move-result v0

    if-nez v0, :cond_44

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_41

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    goto :goto_41

    :cond_2f
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3d

    const/16 v1, 0xb

    if-ne v0, v1, :cond_44

    :cond_3d
    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->transferToSplit(I)V

    goto :goto_44

    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->finishDragAnimationUnCheck()V

    :cond_44
    :goto_44
    return-void
.end method

.method public prepareToNormalAnimation()V
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mInitialSplitCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mCurrentSplitCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_23

    :cond_19
    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_23
    invoke-direct {p0, v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->startTransferToNormalAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public prepareTransferAnimation(I)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v14, p1

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    invoke-virtual {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->cancleCurrentAnimation()V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x6

    const/high16 v2, 0x42300000  # 44.0f

    const/high16 v3, 0x3f000000  # 0.5f

    const/high16 v4, 0x42840000  # 66.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    if-eq v14, v1, :cond_81

    const/16 v1, 0x8

    if-eq v14, v1, :cond_67

    const/16 v1, 0xa

    if-eq v14, v1, :cond_4f

    const/16 v1, 0xc

    if-eq v14, v1, :cond_35

    move v7, v5

    move v8, v7

    move v10, v8

    move/from16 v16, v10

    move/from16 v17, v16

    goto/16 :goto_a4

    :cond_35
    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v1, :cond_44

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->access$200(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v13, v6, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_8e

    :cond_44
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->access$200(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v11, v6, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_9e

    :cond_4f
    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v1, :cond_5d

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->access$100(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I

    move-result v1

    invoke-virtual {v13, v6, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_8e

    :cond_5d
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->access$100(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I

    move-result v1

    invoke-virtual {v11, v6, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_9e

    :cond_67
    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v1, :cond_76

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v13, v1, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_8e

    :cond_76
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v11, v1, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_9e

    :cond_81
    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v1, :cond_95

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I

    move-result v1

    invoke-virtual {v13, v1, v6}, Landroid/graphics/Point;->set(II)V

    :goto_8e
    move/from16 v17, v2

    move/from16 v16, v3

    move v8, v5

    move v10, v8

    goto :goto_a4

    :cond_95
    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I

    move-result v1

    invoke-virtual {v11, v1, v6}, Landroid/graphics/Point;->set(II)V

    :goto_9e
    move v10, v4

    move/from16 v16, v5

    move/from16 v17, v16

    move v8, v7

    :goto_a4
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    sub-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v1, v5, v12

    if-lez v1, :cond_b1

    goto :goto_b2

    :cond_b1
    move v5, v12

    :goto_b2
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimAlpha:F

    sub-float v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v1, v5, v19

    if-lez v1, :cond_bf

    goto :goto_c1

    :cond_bf
    move/from16 v5, v19

    :goto_c1
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCorner:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v20, v1, v4

    cmpl-float v1, v5, v20

    if-lez v1, :cond_d0

    goto :goto_d2

    :cond_d0
    move/from16 v5, v20

    :goto_d2
    iget v1, v11, Landroid/graphics/Point;->x:I

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget v4, v11, Landroid/graphics/Point;->y:I

    iget-object v6, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget v6, v6, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    cmpl-float v6, v1, v4

    if-lez v6, :cond_fd

    move/from16 v21, v1

    goto :goto_ff

    :cond_fd
    move/from16 v21, v4

    :goto_ff
    cmpl-float v1, v5, v21

    if-lez v1, :cond_104

    goto :goto_106

    :cond_104
    move/from16 v5, v21

    :goto_106
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitDimAlpha:F

    sub-float v1, v16, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v22, v1, v3

    cmpl-float v1, v5, v22

    if-lez v1, :cond_115

    goto :goto_117

    :cond_115
    move/from16 v5, v22

    :goto_117
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitCornerRadius:F

    sub-float v1, v17, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v23, v1, v2

    cmpl-float v1, v5, v23

    if-lez v1, :cond_126

    goto :goto_128

    :cond_126
    move/from16 v5, v23

    :goto_128
    iget v1, v13, Landroid/graphics/Point;->x:I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitLeashPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v13, Landroid/graphics/Point;->y:I

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitLeashPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v1, v2

    if-lez v3, :cond_153

    move/from16 v24, v1

    goto :goto_155

    :cond_153
    move/from16 v24, v2

    :goto_155
    cmpl-float v1, v5, v24

    if-lez v1, :cond_15c

    move/from16 v25, v5

    goto :goto_15e

    :cond_15c
    move/from16 v25, v24

    :goto_15e
    new-instance v5, Landroid/graphics/Point;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    invoke-direct {v5, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v4, Landroid/graphics/Point;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitLeashPosition:Landroid/graphics/Point;

    invoke-direct {v4, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    const/high16 v1, 0x43160000  # 150.0f

    mul-float v1, v1, v25

    float-to-int v2, v1

    if-eqz v2, :cond_1ab

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    iget v6, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimAlpha:F

    iget v9, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCorner:F

    iget v15, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitDimAlpha:F

    move/from16 v26, v2

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mSplitCornerRadius:F

    move/from16 v18, v2

    move v2, v7

    move-object/from16 v27, v4

    move v4, v12

    move-object v12, v5

    move v5, v8

    move/from16 v7, v19

    move v8, v10

    move/from16 v10, v20

    move-object/from16 v20, v13

    move/from16 v13, v21

    move/from16 v14, v16

    move/from16 v16, v22

    move/from16 v19, v23

    move-object/from16 v21, v27

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v26

    move/from16 v25, p1

    invoke-virtual/range {v1 .. v25}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->prepareNextAnimation(FFFFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFII)V

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mAnimationOperation:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->startNextAnimation()V

    goto :goto_1c4

    :cond_1ab
    add-int/lit8 v1, p1, -0x1

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v1, "not need animation mCurrentAnimationState="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v3, "OplusDragZoomPhoneAnimationManager"

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1c4

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->finishDragAnimationUnCheck()V

    :cond_1c4
    :goto_1c4
    return-void
.end method

.method public prepareZoomToSplitAnimation()V
    .registers 22

    move-object/from16 v8, p0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    const/16 v1, 0xb

    const/16 v2, 0x9

    const/4 v3, 0x7

    const/4 v4, 0x5

    const/4 v13, 0x0

    if-eqz v0, :cond_107

    iget v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    if-eq v0, v4, :cond_9a

    if-ne v0, v2, :cond_29

    goto/16 :goto_9a

    :cond_29
    if-eq v0, v3, :cond_2d

    if-ne v0, v1, :cond_1d5

    :cond_2d
    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_34

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    goto :goto_36

    :cond_34
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    :goto_36
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-boolean v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_41

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    goto :goto_43

    :cond_41
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    :goto_43
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v13, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_57

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_5f

    :cond_57
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_5f
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-boolean v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_6e

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_76

    :cond_6e
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v1

    :goto_76
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_82

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    goto :goto_84

    :cond_82
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    :goto_84
    iput-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8b

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    goto :goto_8d

    :cond_8b
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    :goto_8d
    iput-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_94

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    goto :goto_96

    :cond_94
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    :goto_96
    iput-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    goto/16 :goto_1d5

    :cond_9a
    :goto_9a
    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_a1

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    goto :goto_a3

    :cond_a1
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    :goto_a3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-boolean v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_ae

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    goto :goto_b0

    :cond_ae
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    :goto_b0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v13, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_c4

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_cc

    :cond_c4
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_cc
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-boolean v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v1, :cond_db

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_e3

    :cond_db
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainRect()Landroid/graphics/Rect;

    move-result-object v1

    :goto_e3
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_ef

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    goto :goto_f1

    :cond_ef
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    :goto_f1
    iput-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f8

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    goto :goto_fa

    :cond_f8
    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    :goto_fa
    iput-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_101

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    goto :goto_103

    :cond_101
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    :goto_103
    iput-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    goto/16 :goto_1d5

    :cond_107
    iget v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    if-ne v0, v4, :cond_13d

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v13, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v11, v13, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v1, v0}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1d5

    :cond_13d
    if-ne v0, v3, :cond_170

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v13, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v11, v13, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_1d5

    :cond_170
    if-ne v0, v2, :cond_1a3

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v13, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v11, v13, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_1d5

    :cond_1a3
    if-ne v0, v1, :cond_1d5

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v9, v13, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullBottomCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v11, v13, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mFullTopCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v1, v0}, Landroid/graphics/Point;->set(II)V

    :cond_1d5
    :goto_1d5
    new-instance v14, Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v14, v13, v13, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v13, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x7534

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-boolean v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-nez v0, :cond_216

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    iget-object v2, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_216
    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v3, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v3}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v14}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x42740000  # 61.0f

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

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v0, p0

    move-object v5, v14

    invoke-virtual/range {v0 .. v7}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->adjustDimPosition(Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v13}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->requestChangeZoomTask(IZ)V

    new-instance v4, Landroid/graphics/Point;

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    iget-object v13, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    move-object v3, v10

    move-object v5, v11

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->startTransferToSplitAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

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

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimScale:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomScale:F

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

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mRootSplitSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

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

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_26
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_39
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4c
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

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

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mRootSplitSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->mRootSplitSurface:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    :cond_7f
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_88
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x9

    const/16 v3, 0xb

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v0, :cond_c7

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_be

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_be

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    if-eq v0, v5, :cond_b0

    if-eq v0, v4, :cond_b0

    if-eq v0, v2, :cond_b0

    if-ne v0, v3, :cond_ae

    goto :goto_b0

    :cond_ae
    move v0, v6

    goto :goto_b1

    :cond_b0
    :goto_b0
    move v0, v1

    :goto_b1
    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v1, v8, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    :cond_be
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_c7
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_106

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_fd

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_e5

    iget v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    if-eq v7, v5, :cond_ed

    if-eq v7, v2, :cond_ed

    :cond_e5
    if-nez v0, :cond_ef

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    if-eq v0, v4, :cond_ed

    if-ne v0, v3, :cond_ef

    :cond_ed
    move v0, v1

    goto :goto_f0

    :cond_ef
    move v0, v6

    :goto_f0
    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopSurface:Landroid/view/SurfaceControl;

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_fd
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_106
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v0, :cond_11a

    iget v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    if-eq v7, v4, :cond_124

    if-eq v7, v3, :cond_124

    :cond_11a
    if-nez v0, :cond_123

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    if-eq v0, v5, :cond_124

    if-ne v0, v2, :cond_123

    goto :goto_124

    :cond_123
    move v1, v6

    :cond_124
    :goto_124
    if-eqz v1, :cond_131

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_131
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13a
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public startGestureAnimation()V
    .registers 6

    const-string v0, "OplusDragZoomPhoneAnimationManager"

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    if-nez v1, :cond_84

    const/4 v1, 0x1

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->resetAllState()V

    const/4 v2, 0x0

    :try_start_d
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->initialDragAnimation()Z

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->vibrateWidthSpecilEffect(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialDragAnimation over:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->finishDragAnimationUnCheck()V

    goto :goto_84

    :cond_35
    const/4 v1, 0x2

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-boolean v3, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-gt v3, v4, :cond_49

    const/16 v1, 0x9

    goto :goto_61

    :cond_49
    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-lt v3, v1, :cond_60

    const/16 v1, 0xb

    goto :goto_61

    :cond_50
    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-gt v3, v4, :cond_5a

    const/4 v1, 0x5

    goto :goto_61

    :cond_5a
    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-lt v3, v1, :cond_60

    const/4 v1, 0x7

    goto :goto_61

    :cond_60
    move v1, v2

    :goto_61
    if-nez v1, :cond_69

    const-string v1, "already move to over"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    :cond_69
    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->transferToState(I)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6c} :catch_6d

    goto :goto_84

    :catch_6d
    move-exception v1

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###drag zoom error:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :goto_84
    return-void
.end method

.method public transferToNormal(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->prepareToNormalAnimation()V

    return-void
.end method

.method public transferToSplit(I)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setMaintainLayerTask(IZ)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->prepareZoomToSplitAnimation()V

    return-void
.end method
