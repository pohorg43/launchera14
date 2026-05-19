.class Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->prepareNextAnimation(FFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

.field public final synthetic val$animationFinalProgress:F

.field public final synthetic val$currentDragSurfaceCrop:Landroid/graphics/Rect;

.field public final synthetic val$currentFullCorner:F

.field public final synthetic val$currentFullDimAlpha:F

.field public final synthetic val$currentTotalCornerRadius:F

.field public final synthetic val$currentZoomDimAlpha:F

.field public final synthetic val$fullCornerRadius:F

.field public final synthetic val$fullCornerRadiusProgress:F

.field public final synthetic val$fullCropProgress:F

.field public final synthetic val$fullCurrentPosition:Landroid/graphics/Point;

.field public final synthetic val$fullCurrentRect:Landroid/graphics/Rect;

.field public final synthetic val$fullDim:F

.field public final synthetic val$fullDimAlphaProgress:F

.field public final synthetic val$fullPosition:Landroid/graphics/Point;

.field public final synthetic val$fullPositionProgress:F

.field public final synthetic val$fullRect:Landroid/graphics/Rect;

.field public final synthetic val$mainCurrentScale:F

.field public final synthetic val$mainScale:F

.field public final synthetic val$mainScaleProgress:F

.field public final synthetic val$sideCurrentScale:F

.field public final synthetic val$sideScale:F

.field public final synthetic val$sideScaleProgress:F

.field public final synthetic val$totalCornerRadius:F

.field public final synthetic val$totalCornerRadiusProgress:F

.field public final synthetic val$totalCrop:Landroid/graphics/Rect;

.field public final synthetic val$totalCropProgress:F

.field public final synthetic val$totalCurrentPosition:Landroid/graphics/Point;

.field public final synthetic val$totalCurrentRect:Landroid/graphics/Rect;

.field public final synthetic val$totalPosition:Landroid/graphics/Point;

.field public final synthetic val$totalPositionProgress:F

.field public final synthetic val$zoomCropProgress:F

.field public final synthetic val$zoomDimAlpha:F

.field public final synthetic val$zoomDimAlphaProgress:F

.field public final synthetic val$zoomRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;FFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 38

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    move v1, p2

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$animationFinalProgress:F

    move v1, p3

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$zoomDimAlphaProgress:F

    move v1, p4

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$zoomDimAlpha:F

    move v1, p5

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentZoomDimAlpha:F

    move v1, p6

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$zoomCropProgress:F

    move-object v1, p7

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$zoomRect:Landroid/graphics/Rect;

    move-object v1, p8

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentDragSurfaceCrop:Landroid/graphics/Rect;

    move v1, p9

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCornerRadiusProgress:F

    move v1, p10

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCornerRadius:F

    move v1, p11

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentTotalCornerRadius:F

    move v1, p12

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCropProgress:F

    move-object v1, p13

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCrop:Landroid/graphics/Rect;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCurrentRect:Landroid/graphics/Rect;

    move/from16 v1, p15

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalPositionProgress:F

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalPosition:Landroid/graphics/Point;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCurrentPosition:Landroid/graphics/Point;

    move/from16 v1, p18

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$sideScaleProgress:F

    move/from16 v1, p19

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$sideScale:F

    move/from16 v1, p20

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$sideCurrentScale:F

    move/from16 v1, p21

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$mainScaleProgress:F

    move/from16 v1, p22

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$mainScale:F

    move/from16 v1, p23

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$mainCurrentScale:F

    move/from16 v1, p24

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullCropProgress:F

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullRect:Landroid/graphics/Rect;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullCurrentRect:Landroid/graphics/Rect;

    move/from16 v1, p27

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullDimAlphaProgress:F

    move/from16 v1, p28

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullDim:F

    move/from16 v1, p29

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentFullDimAlpha:F

    move/from16 v1, p30

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullCornerRadiusProgress:F

    move/from16 v1, p31

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullCornerRadius:F

    move/from16 v1, p32

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentFullCorner:F

    move/from16 v1, p33

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullPositionProgress:F

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullPosition:Landroid/graphics/Point;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullCurrentPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 21

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$animationFinalProgress:F

    div-float/2addr v1, v2

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$zoomDimAlphaProgress:F

    const/4 v10, 0x0

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_2d

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$zoomDimAlpha:F

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentZoomDimAlpha:F

    invoke-static {v2, v3, v1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v2

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iput v2, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2d
    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$zoomCropProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_c0

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$zoomRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentDragSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentDragSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$zoomRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentDragSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentDragSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    invoke-static {v2}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->access$600(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragZoomSurface:Landroid/view/SurfaceControl;

    invoke-static {v2}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->access$600(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v11, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v12, v11, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget v13, v11, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimScale:F

    invoke-static {v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->access$700(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)F

    move-result v14

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v15, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-virtual/range {v11 .. v18}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->adjustDimPosition(Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    :cond_c0
    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCornerRadiusProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_e2

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCornerRadius:F

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentTotalCornerRadius:F

    invoke-static {v2, v3, v1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v2

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    invoke-static {v3, v2}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->access$802(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;F)F

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_e2
    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCropProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_134

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCrop:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCurrentRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, v1

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v1

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v1

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v1

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v4, v7, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    invoke-static {v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->access$900(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_134
    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalPositionProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_16a

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$totalCurrentPosition:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    add-int/2addr v3, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    add-int/2addr v2, v4

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    invoke-static {v4}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->access$1000(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {v5, v4, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_16a
    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$sideScaleProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_181

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v2, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v4, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    iget-object v5, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    iget v6, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$sideScale:F

    iget v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$sideCurrentScale:F

    const/4 v9, 0x1

    move v8, v1

    invoke-static/range {v3 .. v9}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->access$1100(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;FFFZ)V

    :cond_181
    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$mainScaleProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_198

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v2, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v4, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    iget-object v5, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    iget v6, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$mainScale:F

    iget v7, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$mainCurrentScale:F

    const/4 v9, 0x0

    move v8, v1

    invoke-static/range {v3 .. v9}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->access$1100(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;FFFZ)V

    :cond_198
    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullCropProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_200

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullCurrentRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v1

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v1

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v6, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v11, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v12, v11, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    const/high16 v13, 0x3f800000  # 1.0f

    const/high16 v14, 0x3f800000  # 1.0f

    iget-object v15, v11, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    iget-object v2, v11, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    iget-object v3, v11, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v11 .. v18}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->adjustDimPosition(Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    :cond_200
    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullDimAlphaProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_21d

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullDim:F

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentFullDimAlpha:F

    invoke-static {v2, v3, v1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v2

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iput v2, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimAlpha:F

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_21d
    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullCornerRadiusProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_23a

    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullCornerRadius:F

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$currentFullCorner:F

    invoke-static {v2, v3, v1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v2

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iput v2, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCorner:F

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_23a
    iget v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullPositionProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_26e

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->val$fullCurrentPosition:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    add-int/2addr v3, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    add-int/2addr v1, v4

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v4, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-virtual {v4, v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_26e
    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
