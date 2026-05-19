.class Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;
.super Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OplusFoldDragZoomAnimationOperation"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;)V

    return-void
.end method


# virtual methods
.method public prepareNextAnimation(FFFLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFFFFFFFFFFFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFII)V
    .registers 102

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v6, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

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

    move/from16 v22, p19

    move/from16 v23, p20

    move/from16 v21, p21

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v24, p24

    move/from16 v28, p25

    move/from16 v29, p26

    move/from16 v27, p27

    move/from16 v31, p28

    move/from16 v32, p29

    move/from16 v30, p30

    move/from16 v34, p31

    move/from16 v35, p32

    move/from16 v33, p33

    move-object/from16 v37, p34

    move-object/from16 v38, p35

    move/from16 v36, p36

    move/from16 v40, p37

    move/from16 v41, p38

    move/from16 v39, p39

    move/from16 v43, p40

    move/from16 v44, p41

    move/from16 v42, p42

    move-object/from16 v46, p43

    move-object/from16 v47, p44

    move/from16 v45, p45

    move/from16 v2, p46

    move-object/from16 v48, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v49, 0x0

    const/16 v50, 0x0

    aput v50, v1, v49

    const/16 v49, 0x1

    aput p46, v1, v49

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    move-object/from16 p1, v1

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;

    move-object v0, v1

    move-object/from16 v51, p1

    move-object/from16 v52, v1

    move-object/from16 v1, v48

    invoke-direct/range {v0 .. v47}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$1;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;FFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFFFFFFFFFFFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    move/from16 v2, p47

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;

    move/from16 v3, p48

    invoke-direct {v2, v0, v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
