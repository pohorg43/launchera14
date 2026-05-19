.class public Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;
.super Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZoomAnimationProperty"
.end annotation


# instance fields
.field public mCardCrop:Landroid/graphics/Rect;

.field public mCardMiniCrop:Landroid/graphics/Rect;

.field public mIconHeight:I

.field public mIconWidth:I

.field public mZoomDiff:I

.field public mZoomDimScale:F

.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public adjustTargetProperty(I)V
    .registers 9

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eq p1, v0, :cond_50

    const/4 v0, 0x5

    if-eq p1, v0, :cond_50

    const/4 v3, 0x7

    if-eq p1, v3, :cond_50

    const/16 v4, 0x9

    if-eq p1, v4, :cond_50

    const/16 v5, 0xb

    if-eq p1, v5, :cond_50

    const/16 v6, 0xd

    if-eq p1, v6, :cond_19

    goto :goto_64

    :cond_19
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const/16 v6, 0xa

    if-eq p1, v6, :cond_38

    if-ne p1, v4, :cond_24

    goto :goto_38

    :cond_24
    const/16 v1, 0xc

    if-eq p1, v1, :cond_35

    if-eq p1, v5, :cond_35

    if-eq p1, v0, :cond_35

    const/4 v0, 0x6

    if-eq p1, v0, :cond_35

    if-eq p1, v3, :cond_35

    const/16 v0, 0x8

    if-ne p1, v0, :cond_64

    :cond_35
    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    goto :goto_64

    :cond_38
    :goto_38
    const-string p1, "OplusZoomToFlexibleBaseAnimationState"

    const-string v0, "over to recover"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    goto :goto_64

    :cond_50
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mCardCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    const p1, 0x3f4ccccd  # 0.8f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    const/16 p1, 0x12c

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    :cond_64
    :goto_64
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

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

.method public changeCropAndPosition(FLandroid/view/SurfaceControl$Transaction;)V
    .registers 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {p1, v1, v2}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {p1, v2, v3}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-static {p1, v3, v4}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-static {p1, v4, v5}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mZoomDimScale:F

    const/high16 v3, 0x3f000000  # 0.5f

    invoke-static {v1, v2, v0, v3}, Landroidx/core/content/res/e;->a(FFFF)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    int-to-float p1, v1

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconHeight:I

    int-to-float v1, v1

    invoke-static {v1, v2, p1, v3}, Landroidx/core/content/res/e;->a(FFFF)F

    move-result p1

    float-to-int p1, p1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {p2, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_81
    return-void
.end method

.method public initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42800000  # 64.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconHeight:I

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconWidth:I

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getTopVisibleTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getChildTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_4a

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getChildTaskLeash(I)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    :cond_4a
    const-string v1, "animationSource wholeSurface:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "backSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusZoomToFlexibleBaseAnimationState"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentScale()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    div-float v1, v2, v1

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mZoomDimScale:F

    const/high16 v1, 0x43040000  # 132.0f

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mZoomDimScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const/high16 v3, 0x436b0000  # 235.0f

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mZoomDimScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    const/high16 v6, 0x3f000000  # 0.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const v7, 0x3e4ccccd  # 0.2f

    int-to-float v3, v3

    mul-float/2addr v7, v3

    float-to-int v8, v7

    neg-int v8, v8

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v1, v9

    mul-float/2addr v1, v6

    float-to-int v1, v1

    const v9, 0x3f4ccccd  # 0.8f

    mul-float/2addr v9, v3

    float-to-int v9, v9

    invoke-direct {v4, v5, v8, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mCardCrop:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconWidth:I

    int-to-float v5, v5

    iget v8, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mZoomDimScale:F

    invoke-static {v5, v8, v4, v6}, Landroidx/core/content/res/e;->a(FFFF)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    sub-float v5, v3, v5

    mul-float/2addr v5, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconWidth:I

    int-to-float v9, v9

    iget v10, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mZoomDimScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v8

    mul-float/2addr v9, v6

    float-to-int v8, v9

    iget v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v10

    add-float/2addr v9, v3

    mul-float/2addr v9, v6

    sub-float/2addr v9, v7

    float-to-int v3, v9

    invoke-direct {v1, v4, v5, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mCardMiniCrop:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mCardCrop:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mZoomDiff:I

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_124

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskSurface:Landroid/view/SurfaceControl;

    :cond_124
    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    const-string v11, "zoom_dim_for_back"

    const-string v12, "initializeZoomAnimationSource"

    move/from16 v8, p3

    move/from16 v9, p3

    move-object/from16 v10, p1

    invoke-static/range {v7 .. v12}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mUiMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_141

    const-string v1, "#FF4D4D4D"

    goto :goto_143

    :cond_141
    const-string v1, "#FFFFFFFF"

    :goto_143
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v13, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    iget-object v15, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    move v12, v13

    move-object/from16 v14, p2

    move-object/from16 v16, v1

    invoke-static/range {v7 .. v17}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconWidth:I

    iget v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconHeight:I

    const-string v22, "zoom_icon"

    const-string v23, "initializeZoomAnimationSource"

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, p1

    invoke-static/range {v18 .. v23}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_181

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v1, v3}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->generateSurfacePkgNameByUserId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_181
    move-object v8, v1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconWidth:I

    iget v13, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconHeight:I

    iget-object v15, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    move-object/from16 v14, p2

    move-object/from16 v16, v1

    invoke-static/range {v7 .. v17}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconWidth:I

    int-to-float v3, v3

    iget v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mZoomDimScale:F

    invoke-static {v3, v4, v1, v6}, Landroidx/core/content/res/e;->a(FFFF)F

    move-result v1

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mIconHeight:I

    int-to-float v4, v4

    iget v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mZoomDimScale:F

    invoke-static {v4, v5, v3, v6}, Landroidx/core/content/res/e;->a(FFFF)F

    move-result v3

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    const v5, 0x7ffffffe

    move-object/from16 v6, p2

    invoke-virtual {v6, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    const v6, 0x7fffffff

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget v12, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mZoomDimScale:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, v12

    invoke-virtual/range {v7 .. v12}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->mCardCrop:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v6, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWholeAlpha:F

    iput v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentBackAlpha:F

    iput v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackAlpha:F

    iput v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackBlur:I

    iput v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    iput v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    return-void
.end method
