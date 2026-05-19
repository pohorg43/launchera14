.class Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->prepareNextAnimation(FFFFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

.field public final synthetic val$animationFinalProgress:F

.field public final synthetic val$currentFullCorner:F

.field public final synthetic val$currentFullDimAlpha:F

.field public final synthetic val$currentSplitCornerRadius:F

.field public final synthetic val$currentSplitCurrentPosition:Landroid/graphics/Point;

.field public final synthetic val$currentSplitDimAlpha:F

.field public final synthetic val$currentZoomDimAlpha:F

.field public final synthetic val$fullCornerRadius:F

.field public final synthetic val$fullCornerRadiusProgress:F

.field public final synthetic val$fullCurrentPosition:Landroid/graphics/Point;

.field public final synthetic val$fullDim:F

.field public final synthetic val$fullDimAlphaProgress:F

.field public final synthetic val$fullPosition:Landroid/graphics/Point;

.field public final synthetic val$fullPositionProgress:F

.field public final synthetic val$splitCornerRadius:F

.field public final synthetic val$splitCornerRadiusProgress:F

.field public final synthetic val$splitDimAlpha:F

.field public final synthetic val$splitDimAlphaProgress:F

.field public final synthetic val$splitPosition:Landroid/graphics/Point;

.field public final synthetic val$splitPositionProgress:F

.field public final synthetic val$zoomDimAlpha:F

.field public final synthetic val$zoomDimAlphaProgress:F


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;FFFFFFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 26

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    move v1, p2

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$animationFinalProgress:F

    move v1, p3

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$zoomDimAlphaProgress:F

    move v1, p4

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$zoomDimAlpha:F

    move v1, p5

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentZoomDimAlpha:F

    move v1, p6

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullDimAlphaProgress:F

    move v1, p7

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullDim:F

    move v1, p8

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentFullDimAlpha:F

    move v1, p9

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullCornerRadiusProgress:F

    move v1, p10

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullCornerRadius:F

    move v1, p11

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentFullCorner:F

    move v1, p12

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullPositionProgress:F

    move-object v1, p13

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullPosition:Landroid/graphics/Point;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullCurrentPosition:Landroid/graphics/Point;

    move/from16 v1, p15

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitDimAlphaProgress:F

    move/from16 v1, p16

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitDimAlpha:F

    move/from16 v1, p17

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentSplitDimAlpha:F

    move/from16 v1, p18

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitCornerRadiusProgress:F

    move/from16 v1, p19

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitCornerRadius:F

    move/from16 v1, p20

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentSplitCornerRadius:F

    move/from16 v1, p21

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitPositionProgress:F

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitPosition:Landroid/graphics/Point;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentSplitCurrentPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$animationFinalProgress:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$zoomDimAlphaProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$zoomDimAlpha:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentZoomDimAlpha:F

    invoke-static {v0, v2, p1, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iput v0, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimAlpha:F

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2b
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullDimAlphaProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullDim:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentFullDimAlpha:F

    invoke-static {v0, v2, p1, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iput v0, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimAlpha:F

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_48
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullCornerRadiusProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_65

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullCornerRadius:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentFullCorner:F

    invoke-static {v0, v2, p1, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iput v0, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCorner:F

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_65
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullPositionProgress:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullPosition:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$fullCurrentPosition:Landroid/graphics/Point;

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

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    invoke-virtual {v4, v3, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v5, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    int-to-float v6, v3

    int-to-float v7, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gez v3, :cond_a9

    rsub-int/lit8 v6, v3, 0x0

    goto :goto_aa

    :cond_a9
    move v6, v2

    :goto_aa
    if-lez v3, :cond_ad

    sub-int/2addr v5, v3

    :cond_ad
    if-gez v0, :cond_b2

    rsub-int/lit8 v3, v0, 0x0

    goto :goto_b3

    :cond_b2
    move v3, v2

    :goto_b3
    if-lez v0, :cond_b6

    sub-int/2addr v4, v0

    :cond_b6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v3, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_d1
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitDimAlphaProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f3

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitDimAlpha:F

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentSplitDimAlpha:F

    invoke-static {v0, v3, p1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-static {v3, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->access$702(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;F)F

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_f3
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitCornerRadiusProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_115

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitCornerRadius:F

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentSplitCornerRadius:F

    invoke-static {v0, v3, p1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-static {v3, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->access$802(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;F)F

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_115
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitPositionProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18c

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$splitPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->val$currentSplitCurrentPosition:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v1, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p1, v3

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->access$300(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    int-to-float v4, v1

    int-to-float v5, p1

    invoke-virtual {v3, v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->access$900(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-static {v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->access$900(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gez v1, :cond_164

    rsub-int/lit8 v4, v1, 0x0

    goto :goto_165

    :cond_164
    move v4, v2

    :goto_165
    if-lez v1, :cond_168

    sub-int/2addr v0, v1

    :cond_168
    if-gez p1, :cond_16c

    rsub-int/lit8 v2, p1, 0x0

    :cond_16c
    if-lez p1, :cond_16f

    sub-int/2addr v3, p1

    :cond_16f
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v4, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->access$1000(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_18c
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
