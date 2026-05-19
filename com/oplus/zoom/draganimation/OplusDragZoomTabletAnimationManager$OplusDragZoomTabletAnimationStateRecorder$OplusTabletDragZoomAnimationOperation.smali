.class Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;
.super Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OplusTabletDragZoomAnimationOperation"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;FFFZ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->adjustSurfaceStateForSplitChildLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;FFFZ)V

    return-void
.end method

.method private adjustSurfaceStateForSplitChildLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;FFFZ)V
    .registers 13

    invoke-static {p3, p4, p5, p4}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v5

    if-eqz p6, :cond_e

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object p4, p3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    invoke-static {p3, v5}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->access$1202(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;F)F

    goto :goto_15

    :cond_e
    iget-object p3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object p4, p3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    invoke-static {p3, v5}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->access$1302(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;F)F

    :goto_15
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    const/high16 p5, 0x3f800000  # 1.0f

    sub-float v0, p5, v5

    mul-float/2addr p3, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p3, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, v0

    div-float/2addr p4, v1

    if-eqz p6, :cond_31

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-boolean v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-nez v1, :cond_39

    :cond_31
    if-nez p6, :cond_42

    iget-object p6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-boolean p6, p6, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    if-nez p6, :cond_42

    :cond_39
    iget-object p6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object p6, p6, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-static {p6}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F

    move-result p6

    goto :goto_4a

    :cond_42
    iget-object p6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object p6, p6, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    invoke-static {p6}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->access$100(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F

    move-result p6

    :goto_4a
    sub-float/2addr p5, p6

    div-float/2addr v0, p5

    const/high16 p5, 0x42040000  # 33.0f

    mul-float/2addr p5, v0

    const/high16 p6, 0x3f000000  # 0.5f

    mul-float/2addr p6, v0

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v2, v5

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p1, p5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p2, p6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public prepareNextAnimation(FFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFII)V
    .registers 78

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v9, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v12, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v15, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v18, p18

    move/from16 v22, p19

    move/from16 v23, p20

    move/from16 v21, p21

    move-object/from16 v25, p22

    move-object/from16 v26, p23

    move/from16 v24, p24

    move/from16 v28, p25

    move/from16 v29, p26

    move/from16 v27, p27

    move/from16 v31, p28

    move/from16 v32, p29

    move/from16 v30, p30

    move-object/from16 v34, p31

    move-object/from16 v35, p32

    move/from16 v33, p33

    move/from16 v2, p34

    move-object/from16 v36, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v37, 0x0

    const/16 v38, 0x0

    aput v38, v1, v37

    const/16 v37, 0x1

    aput p34, v1, v37

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    move-object/from16 p1, v1

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;

    move-object v0, v1

    move-object/from16 v39, p1

    move-object/from16 v40, v1

    move-object/from16 v1, v36

    invoke-direct/range {v0 .. v35}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$1;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;FFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    move/from16 v2, p35

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$2;

    move/from16 v3, p36

    invoke-direct {v2, v0, v3}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation$2;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$OplusTabletDragZoomAnimationOperation;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
