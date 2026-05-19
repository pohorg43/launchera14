.class Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;
.super Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OplusPhoneDragZoomAnimationOperation"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;)V

    return-void
.end method


# virtual methods
.method public prepareNextAnimation(FFFFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFII)V
    .registers 54

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v3, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v9, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v12, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v15, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v18, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move/from16 v21, p21

    move/from16 v2, p22

    move-object/from16 v24, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v25, 0x0

    const/16 v26, 0x0

    aput v26, v1, v25

    const/16 v25, 0x1

    aput p22, v1, v25

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    move-object/from16 p1, v1

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;

    move-object v0, v1

    move-object/from16 v27, p1

    move-object/from16 v28, v1

    move-object/from16 v1, v24

    invoke-direct/range {v0 .. v23}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$1;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;FFFFFFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    move/from16 v2, p23

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$2;

    move/from16 v3, p24

    invoke-direct {v2, v0, v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation$2;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$OplusPhoneDragZoomAnimationOperation;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
