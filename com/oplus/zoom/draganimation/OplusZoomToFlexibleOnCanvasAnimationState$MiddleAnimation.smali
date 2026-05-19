.class public Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;
.super Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiddleAnimation"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public adjustTargetProperty(I)V
    .registers 3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_5

    goto :goto_2f

    :cond_5
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_11

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2f

    :cond_11
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdPosition:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    const/high16 v0, 0x3f400000  # 0.75f

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    const/16 v0, 0x12c

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWholeAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWholeAlpha:F

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentBackAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentBackAlpha:F

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimBackAlpha:F

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackBlur:I

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimBackBlur:I

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentIconAlpha:F

    return-void
.end method

.method public initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 20

    move-object v0, p0

    move-object/from16 v12, p2

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v2, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iput-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iget-object v2, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWhole:Ljava/lang/String;

    const-string v2, "initializeAnimationSource"

    move-object/from16 v13, p1

    invoke-static {v13, v1, v2}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildContainerSurface(Landroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    move-object/from16 v2, p3

    invoke-virtual {v12, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBack:Ljava/lang/String;

    const-string v8, "initializeAnimationSource"

    move/from16 v4, p4

    move/from16 v5, p4

    move-object/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    sget v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->WHOLE_BACK_COLOR:I

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskSurface:Landroid/view/SurfaceControl;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v14, 0x0

    invoke-direct {v4, v14, v14, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {v5, v14, v14, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    iget-object v10, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v11, 0x0

    move/from16 v6, p4

    move/from16 v7, p4

    move-object/from16 v8, p2

    invoke-static/range {v1 .. v11}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v12, v1, v14}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimBack:Ljava/lang/String;

    const-string v8, "initializeAnimationSource"

    move/from16 v4, p4

    move/from16 v5, p4

    move-object/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v9

    iput-object v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDimColor:I

    iget-object v10, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p4

    move/from16 v7, p4

    move-object/from16 v8, p2

    invoke-static/range {v1 .. v11}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIcon:Ljava/lang/String;

    const-string v8, "initializeAnimationSource"

    move/from16 v4, p4

    move/from16 v5, p4

    move-object/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v1, v2}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->generateSurfacePkgNameByUserId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget-object v10, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p4

    move/from16 v7, p4

    move-object/from16 v8, p2

    invoke-static/range {v1 .. v11}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToFlexible:Landroid/graphics/Rect;

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    invoke-virtual {p0, v1, v3, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->adjustCommonCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToFlexible:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->adjustTargetPosition(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    const/high16 v3, 0x42040000  # 33.0f

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iput v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWholeAlpha:F

    iput v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentBackAlpha:F

    iput v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackAlpha:F

    iput v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v14, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackBlur:I

    iput v14, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    iput v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    return-void
.end method
