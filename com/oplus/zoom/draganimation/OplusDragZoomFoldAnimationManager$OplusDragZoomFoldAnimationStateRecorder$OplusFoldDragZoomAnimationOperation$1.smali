.class Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->prepareNextAnimation(FFFLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFFFFFFFFFFFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

.field public final synthetic val$animationFinalProgress:F

.field public final synthetic val$childLeftScaleProgress:F

.field public final synthetic val$childRightScaleProgress:F

.field public final synthetic val$currentDragSurfaceCrop:Landroid/graphics/Rect;

.field public final synthetic val$currentFullCorner:F

.field public final synthetic val$currentFullDimAlpha:F

.field public final synthetic val$currentLeftDimAlpha:F

.field public final synthetic val$currentLeftScale:F

.field public final synthetic val$currentRightDimAlpha:F

.field public final synthetic val$currentRightScale:F

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

.field public final synthetic val$leftDimAlphaProgress:F

.field public final synthetic val$mainCornerProgress:F

.field public final synthetic val$mainCornerRadius:F

.field public final synthetic val$mainCurrentCornerRadius:F

.field public final synthetic val$rightDimAlphaProgress:F

.field public final synthetic val$sideCornerProgress:F

.field public final synthetic val$sideCornerRadius:F

.field public final synthetic val$sideCurrentCornerRadius:F

.field public final synthetic val$splitLeftDimAlpha:F

.field public final synthetic val$splitLeftScale:F

.field public final synthetic val$splitRightDimAlpha:F

.field public final synthetic val$splitRightScale:F

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
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;FFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFFFFFFFFFFFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 50

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    move v1, p2

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$animationFinalProgress:F

    move v1, p3

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$zoomDimAlphaProgress:F

    move v1, p4

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$zoomDimAlpha:F

    move v1, p5

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentZoomDimAlpha:F

    move v1, p6

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$zoomCropProgress:F

    move-object v1, p7

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$zoomRect:Landroid/graphics/Rect;

    move-object v1, p8

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentDragSurfaceCrop:Landroid/graphics/Rect;

    move v1, p9

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCropProgress:F

    move-object v1, p10

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCrop:Landroid/graphics/Rect;

    move-object v1, p11

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCurrentRect:Landroid/graphics/Rect;

    move v1, p12

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalPositionProgress:F

    move-object v1, p13

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalPosition:Landroid/graphics/Point;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCurrentPosition:Landroid/graphics/Point;

    move/from16 v1, p15

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCornerRadiusProgress:F

    move/from16 v1, p16

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCornerRadius:F

    move/from16 v1, p17

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentTotalCornerRadius:F

    move/from16 v1, p18

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$childLeftScaleProgress:F

    move/from16 v1, p19

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$splitLeftScale:F

    move/from16 v1, p20

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentLeftScale:F

    move/from16 v1, p21

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$leftDimAlphaProgress:F

    move/from16 v1, p22

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$splitLeftDimAlpha:F

    move/from16 v1, p23

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentLeftDimAlpha:F

    move/from16 v1, p24

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$childRightScaleProgress:F

    move/from16 v1, p25

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$splitRightScale:F

    move/from16 v1, p26

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentRightScale:F

    move/from16 v1, p27

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$rightDimAlphaProgress:F

    move/from16 v1, p28

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$splitRightDimAlpha:F

    move/from16 v1, p29

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentRightDimAlpha:F

    move/from16 v1, p30

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$sideCornerProgress:F

    move/from16 v1, p31

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$sideCornerRadius:F

    move/from16 v1, p32

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$sideCurrentCornerRadius:F

    move/from16 v1, p33

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$mainCornerProgress:F

    move/from16 v1, p34

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$mainCornerRadius:F

    move/from16 v1, p35

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$mainCurrentCornerRadius:F

    move/from16 v1, p36

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullCropProgress:F

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullRect:Landroid/graphics/Rect;

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullCurrentRect:Landroid/graphics/Rect;

    move/from16 v1, p39

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullDimAlphaProgress:F

    move/from16 v1, p40

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullDim:F

    move/from16 v1, p41

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentFullDimAlpha:F

    move/from16 v1, p42

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullCornerRadiusProgress:F

    move/from16 v1, p43

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullCornerRadius:F

    move/from16 v1, p44

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentFullCorner:F

    move/from16 v1, p45

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullPositionProgress:F

    move-object/from16 v1, p46

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullPosition:Landroid/graphics/Point;

    move-object/from16 v1, p47

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullCurrentPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 14

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$animationFinalProgress:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$zoomDimAlphaProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$zoomDimAlpha:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentZoomDimAlpha:F

    invoke-static {v0, v2, p1, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iput v0, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2b
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$zoomCropProgress:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$zoomRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentDragSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentDragSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$zoomRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentDragSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentDragSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v9, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v9, v4, v2, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$300(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragZoomSurface:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$300(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget v6, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimScale:F

    invoke-static {v4}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$400(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;)F

    move-result v7

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v11, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {v4 .. v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->adjustDimPosition(Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    :cond_b8
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCropProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_fe

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCrop:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCurrentRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, p1

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, p1

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-static {v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$500(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_fe
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalPositionProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalPosition:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCurrentPosition:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v3, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-static {v4}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$600(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-virtual {v5, v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_134
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCornerRadiusProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_156

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$totalCornerRadius:F

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentTotalCornerRadius:F

    invoke-static {v0, v3, p1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-static {v3, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$702(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_156
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$childLeftScaleProgress:F

    cmpl-float v0, v0, v1

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v4, 0x40000000  # 2.0f

    if-eqz v0, :cond_1be

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$splitLeftScale:F

    iget v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentLeftScale:F

    invoke-static {v0, v5, p1, v5}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v11

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-boolean v5, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v5, :cond_17a

    invoke-static {v0, v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$802(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    goto :goto_183

    :cond_17a
    invoke-static {v0, v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$902(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    :goto_183
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v3, v11

    mul-float/2addr v5, v6

    div-float/2addr v5, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    div-float/2addr v0, v4

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v6, v6, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v7, v6, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-boolean v8, v6, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v8, :cond_1a2

    iget-object v6, v6, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    goto :goto_1a4

    :cond_1a2
    iget-object v6, v6, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    :goto_1a4
    move-object v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v7

    move-object v7, v8

    move v8, v11

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-boolean v8, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v8, :cond_1b9

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    goto :goto_1bb

    :cond_1b9
    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    :goto_1bb
    invoke-virtual {v6, v7, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1be
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$leftDimAlphaProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1ef

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$splitLeftDimAlpha:F

    iget v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentLeftDimAlpha:F

    invoke-static {v0, v5, p1, v5}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-boolean v6, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v6, :cond_1d8

    invoke-static {v5, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$1002(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    goto :goto_1db

    :cond_1d8
    invoke-static {v5, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$1102(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    :goto_1db
    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v6, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v6, v6, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-boolean v7, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v7, :cond_1ea

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    goto :goto_1ec

    :cond_1ea
    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    :goto_1ec
    invoke-virtual {v6, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1ef
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$childRightScaleProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_250

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$splitRightScale:F

    iget v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentRightScale:F

    invoke-static {v0, v5, p1, v5}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v11

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-boolean v5, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v5, :cond_20f

    invoke-static {v0, v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$902(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    goto :goto_218

    :cond_20f
    invoke-static {v0, v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$802(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    :goto_218
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v11

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v4

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v6, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-boolean v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v4, :cond_236

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    goto :goto_238

    :cond_236
    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    :goto_238
    move-object v7, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, v11

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-boolean v6, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v6, :cond_24b

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    goto :goto_24d

    :cond_24b
    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    :goto_24d
    invoke-virtual {v3, v4, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_250
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$rightDimAlphaProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_281

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$splitRightDimAlpha:F

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentRightDimAlpha:F

    invoke-static {v0, v3, p1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-boolean v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v4, :cond_26a

    invoke-static {v3, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$1102(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    goto :goto_26d

    :cond_26a
    invoke-static {v3, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$1002(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    :goto_26d
    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-boolean v5, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-eqz v5, :cond_27c

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainDimSurface:Landroid/view/SurfaceControl;

    goto :goto_27e

    :cond_27c
    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideDimSurface:Landroid/view/SurfaceControl;

    :goto_27e
    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_281
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$sideCornerProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2a3

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$sideCornerRadius:F

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$sideCurrentCornerRadius:F

    invoke-static {v0, v3, p1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-static {v3, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$1202(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2a3
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$mainCornerProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c5

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$mainCornerRadius:F

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$mainCurrentCornerRadius:F

    invoke-static {v0, v3, p1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-static {v3, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$1302(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;F)F

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2c5
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullCropProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_31b

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullCurrentRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, p1

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    new-instance v9, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    invoke-direct {v9, v3, v2, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    iget-object v8, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    iget-object v10, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    iget-object v0, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v11, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {v4 .. v11}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->adjustDimPosition(Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    :cond_31b
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullDimAlphaProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_338

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullDim:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentFullDimAlpha:F

    invoke-static {v0, v2, p1, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iput v0, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimAlpha:F

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_338
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullCornerRadiusProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_355

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullCornerRadius:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$currentFullCorner:F

    invoke-static {v0, v2, p1, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iput v0, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCorner:F

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_355
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullPositionProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_389

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->val$fullCurrentPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p1, v2

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    int-to-float v1, v1

    int-to-float p1, p1

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_389
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
