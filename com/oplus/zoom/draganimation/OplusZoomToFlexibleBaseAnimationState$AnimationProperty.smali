.class public Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationProperty"
.end annotation


# instance fields
.field public mAddThirdPosition:Landroid/graphics/Point;

.field public mAddThirdWindowCrop:Landroid/graphics/Rect;

.field public mBack:Ljava/lang/String;

.field public mBackSurface:Landroid/view/SurfaceControl;

.field public mContext:Landroid/content/Context;

.field public mCurrentBackAlpha:F

.field public mCurrentDimBackAlpha:F

.field public mCurrentDimBackBlur:I

.field public mCurrentDimIconAlpha:F

.field public mCurrentDimIconBlur:I

.field public mCurrentIconAlpha:F

.field public mCurrentPosition:Landroid/graphics/Point;

.field public mCurrentReplaceIconAlpha:F

.field public mCurrentWholeAlpha:F

.field public mCurrentWindowCrop:Landroid/graphics/Rect;

.field public mDimBack:Ljava/lang/String;

.field public mDimForBackSurface:Landroid/view/SurfaceControl;

.field public mDimForIconSurface:Landroid/view/SurfaceControl;

.field public mDimIcon:Ljava/lang/String;

.field public mIcon:Ljava/lang/String;

.field public mIconSurface:Landroid/view/SurfaceControl;

.field public mIconSurfacePoint:Landroid/graphics/Point;

.field public mInitialPosition:Landroid/graphics/Point;

.field public mInitialRect:Landroid/graphics/Rect;

.field public mInitialWindowCrop:Landroid/graphics/Rect;

.field public mMode:I

.field public mPackage:Ljava/lang/String;

.field public mPreparePosition:Landroid/graphics/Point;

.field public mPrepareWindowCrop:Landroid/graphics/Rect;

.field public mReplaceIcon:Ljava/lang/String;

.field public mReplaceIconSurface:Landroid/view/SurfaceControl;

.field public mTargetBackAlpha:F

.field public mTargetDimBackAlpha:F

.field public mTargetDimBackBlur:I

.field public mTargetDimIconAlpha:F

.field public mTargetDimIconBlur:I

.field public mTargetIconAlpha:F

.field public mTargetPosition:Landroid/graphics/Point;

.field public mTargetReplaceIconAlpha:F

.field public mTargetWholeAlpha:F

.field public mTargetWindowCrop:Landroid/graphics/Rect;

.field public mTaskBounds:Landroid/graphics/Rect;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mTaskSurface:Landroid/view/SurfaceControl;

.field public mTipsSurface:Landroid/view/SurfaceControl;

.field public mTipsTopOffer:I

.field public mTipsViewHost:Landroid/view/SurfaceControlViewHost;

.field public mTmpCurrentBackAlpha:F

.field public mTmpCurrentDimBackAlpha:F

.field public mTmpCurrentDimBackBlur:I

.field public mTmpCurrentDimIconAlpha:F

.field public mTmpCurrentDimIconBlur:I

.field public mTmpCurrentIconAlpha:F

.field public mTmpCurrentPosition:Landroid/graphics/Point;

.field public mTmpCurrentReplaceIconAlpha:F

.field public mTmpCurrentWholeAlpha:F

.field public mTmpCurrentWindowCrop:Landroid/graphics/Rect;

.field public mWhole:Ljava/lang/String;

.field public mWholeSurface:Landroid/view/SurfaceControl;

.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialPosition:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentPosition:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdWindowCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdPosition:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPrepareWindowCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPreparePosition:Landroid/graphics/Point;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentReplaceIconAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetReplaceIconAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentReplaceIconAlpha:F

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurfacePoint:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    const-string p1, "replace_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIcon:Ljava/lang/String;

    if-eqz p3, :cond_c4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_af

    const/4 p1, 0x2

    if-eq p3, p1, :cond_9a

    const/4 p1, 0x3

    if-eq p3, p1, :cond_89

    goto :goto_cc

    :cond_89
    const-string p1, "middle_whole_leash"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWhole:Ljava/lang/String;

    const-string p1, "middle_back"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBack:Ljava/lang/String;

    const-string p1, "middle_back_dim"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimBack:Ljava/lang/String;

    const-string p1, "middle_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIcon:Ljava/lang/String;

    goto :goto_cc

    :cond_9a
    const-string p1, "right_whole"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWhole:Ljava/lang/String;

    const-string p1, "right_back"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBack:Ljava/lang/String;

    const-string p1, "right_dim_for_back"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimBack:Ljava/lang/String;

    const-string p1, "right_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIcon:Ljava/lang/String;

    const-string p1, "right_dim_for_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimIcon:Ljava/lang/String;

    goto :goto_cc

    :cond_af
    const-string p1, "left_whole"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWhole:Ljava/lang/String;

    const-string p1, "left_back"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBack:Ljava/lang/String;

    const-string p1, "left_dim_for_back"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimBack:Ljava/lang/String;

    const-string p1, "left_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIcon:Ljava/lang/String;

    const-string p1, "left_dim_for_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimIcon:Ljava/lang/String;

    goto :goto_cc

    :cond_c4
    const-string p1, "zoom_dim_for_back"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimBack:Ljava/lang/String;

    const-string p1, "zoom_icon"

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIcon:Ljava/lang/String;

    :goto_cc
    return-void
.end method


# virtual methods
.method public addReplaceIcon(Ljava/lang/String;ILandroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;)V
    .registers 18

    move-object v0, p0

    move-object/from16 v12, p4

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v12, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIcon:Ljava/lang/String;

    const-string v9, "addReplaceIcon"

    move v5, p2

    move v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v4 .. v9}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v9

    iput-object v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    iget-object v10, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move v7, p2

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v11}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x3

    invoke-virtual {v12, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    return-void
.end method

.method public adjusInitialCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZI)V
    .registers 12

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    const/4 p0, 0x2

    const/4 v1, 0x1

    const/high16 v3, 0x3f000000  # 0.5f

    if-eqz p5, :cond_3e

    if-ne p6, v1, :cond_2b

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p3, p0

    int-to-float p0, p3

    mul-float/2addr p0, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p5

    sub-int/2addr p3, p5

    int-to-float p3, p3

    add-float/2addr p0, p3

    :goto_29
    float-to-int v2, p0

    goto :goto_35

    :cond_2b
    if-ne p6, p0, :cond_35

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p3, p0

    int-to-float p0, p3

    mul-float/2addr p0, v3

    goto :goto_29

    :cond_35
    :goto_35
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p4, p0

    int-to-float p0, p4

    mul-float/2addr p0, v3

    float-to-int p0, p0

    goto :goto_69

    :cond_3e
    if-ne p6, v1, :cond_54

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p4, p0

    int-to-float p0, p4

    mul-float/2addr p0, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p5

    sub-int/2addr p4, p5

    int-to-float p4, p4

    add-float/2addr p0, p4

    :goto_52
    float-to-int v2, p0

    goto :goto_5e

    :cond_54
    if-ne p6, p0, :cond_5e

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p4, p0

    int-to-float p0, p4

    mul-float/2addr p0, v3

    goto :goto_52

    :cond_5e
    :goto_5e
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p3, p0

    int-to-float p0, p3

    mul-float/2addr p0, v3

    float-to-int p0, p0

    move v4, v2

    move v2, p0

    move p0, v4

    :goto_69
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p0

    invoke-virtual {p1, v2, p0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public adjustCommonCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int p0, p3, p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr p3, v1

    int-to-float p3, p3

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p0, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public adjustInitialPosition(Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p3, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public adjustTargetCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p0, v2, :cond_19

    iget p0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p0, p2

    goto :goto_1b

    :cond_19
    iget p0, p2, Landroid/graphics/Rect;->left:I

    :goto_1b
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p4, p2

    int-to-float p2, p4

    mul-float/2addr p2, v1

    float-to-int p2, p2

    goto :goto_3b

    :cond_24
    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p0, v2, :cond_30

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p0, p2

    goto :goto_32

    :cond_30
    iget p0, p2, Landroid/graphics/Rect;->top:I

    :goto_32
    move p2, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p4, p0

    int-to-float p0, p4

    mul-float/2addr p0, v1

    float-to-int p0, p0

    :goto_3b
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/2addr p4, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p0, p2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public adjustTargetPosition(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 5

    iget p0, p2, Landroid/graphics/Point;->x:I

    iget v0, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public adjustTargetProperty(I)V
    .registers 13

    const/4 v0, 0x3

    const/16 v1, 0x12c

    const/high16 v2, 0x3f400000  # 0.75f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    if-eq p1, v0, :cond_111

    const/16 v0, 0x1e

    const v6, 0x3f4ccccd  # 0.8f

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x5

    if-eq p1, v9, :cond_ed

    const/4 v10, 0x7

    if-eq p1, v10, :cond_c9

    const/16 v0, 0x9

    if-eq p1, v0, :cond_ba

    const/16 v6, 0xb

    if-eq p1, v6, :cond_ba

    const/16 v7, 0xd

    if-eq p1, v7, :cond_26

    goto/16 :goto_12d

    :cond_26
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const/16 v7, 0xa

    if-eq p1, v7, :cond_95

    if-ne p1, v0, :cond_31

    goto :goto_95

    :cond_31
    const/16 v0, 0xc

    if-eq p1, v0, :cond_77

    if-ne p1, v6, :cond_38

    goto :goto_77

    :cond_38
    if-eq p1, v9, :cond_43

    const/4 v0, 0x6

    if-eq p1, v0, :cond_43

    if-eq p1, v10, :cond_43

    const/16 v0, 0x8

    if-ne p1, v0, :cond_12d

    :cond_43
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdPosition:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    if-nez p1, :cond_65

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto/16 :goto_12d

    :cond_65
    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetReplaceIconAlpha:F

    goto/16 :goto_12d

    :cond_77
    :goto_77
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdPosition:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto/16 :goto_12d

    :cond_95
    :goto_95
    const-string p1, "OplusZoomToFlexibleBaseAnimationState"

    const-string v0, "over to recover "

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialPosition:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto/16 :goto_12d

    :cond_ba
    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto :goto_12d

    :cond_c9
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v8, :cond_dc

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto :goto_12d

    :cond_dc
    if-ne p1, v7, :cond_12d

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto :goto_12d

    :cond_ed
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-ne p1, v8, :cond_100

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto :goto_12d

    :cond_100
    if-ne p1, v7, :cond_12d

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    goto :goto_12d

    :cond_111
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPrepareWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPreparePosition:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    :cond_12d
    :goto_12d
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

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimIconAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimIconAlpha:F

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimIconBlur:I

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimIconBlur:I

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentReplaceIconAlpha:F

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentReplaceIconAlpha:F

    return-void
.end method

.method public calculateProgress()F
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v1

    :goto_4e
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_69

    goto :goto_6a

    :cond_69
    move v0, v1

    :goto_6a
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_85

    goto :goto_86

    :cond_85
    move v0, v1

    :goto_86
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWholeAlpha:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_94

    goto :goto_95

    :cond_94
    move v0, v1

    :goto_95
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentBackAlpha:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_a3

    goto :goto_a4

    :cond_a3
    move v0, v1

    :goto_a4
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackAlpha:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_b2

    goto :goto_b3

    :cond_b2
    move v0, v1

    :goto_b3
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackBlur:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43960000  # 300.0f

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_c5

    goto :goto_c6

    :cond_c5
    move v0, v1

    :goto_c6
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_d4

    goto :goto_d5

    :cond_d4
    move v0, v1

    :goto_d5
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimIconAlpha:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_e3

    goto :goto_e4

    :cond_e3
    move v0, v1

    :goto_e4
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimIconBlur:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41f00000  # 30.0f

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_f6

    goto :goto_f7

    :cond_f6
    move v0, v1

    :goto_f7
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetReplaceIconAlpha:F

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentReplaceIconAlpha:F

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float v1, v0, p0

    if-lez v1, :cond_105

    goto :goto_106

    :cond_105
    move v0, p0

    :goto_106
    return v0
.end method

.method public changeCropAndPosition(FLandroid/view/SurfaceControl$Transaction;)V
    .registers 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {p1, v2, v3}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-static {p1, v3, v4}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    invoke-static {p1, v4, v5}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWindowCrop:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-static {p1, v5, v6}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v4, 0x3f000000  # 0.5f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    sub-int/2addr v5, v3

    int-to-float v0, v5

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    int-to-float v4, v2

    int-to-float v5, v0

    invoke-virtual {p2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurfacePoint:Landroid/graphics/Point;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8a

    invoke-virtual {p2, v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_8a
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-static {p1, v0, v2}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-static {p1, v2, v3}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p2, p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    invoke-virtual {p0, v1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    :cond_c5
    return-void
.end method

.method public changeProperty(FLandroid/view/SurfaceControl$Transaction;)V
    .registers 10

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->changeCropAndPosition(FLandroid/view/SurfaceControl$Transaction;)V

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentWholeAlpha:F

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40400000  # 3.0f

    const/16 v4, 0xd

    if-eqz v2, :cond_27

    invoke-static {p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v1

    if-ne v1, v4, :cond_20

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-nez v1, :cond_20

    div-float/2addr v0, v3

    :cond_20
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWholeAlpha:F

    :cond_27
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentBackAlpha:F

    cmpl-float v2, v0, v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_59

    invoke-static {p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v1

    if-ne v1, v4, :cond_48

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-eq v1, v6, :cond_43

    if-ne v1, v5, :cond_48

    :cond_43
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_48

    div-float/2addr v0, v3

    :cond_48
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_57
    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentBackAlpha:F

    :cond_59
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimBackAlpha:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_6c

    invoke-static {p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackAlpha:F

    :cond_6c
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimBackBlur:I

    if-eq v0, v1, :cond_80

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackBlur:I

    :cond_80
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentIconAlpha:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_93

    invoke-static {p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    :cond_93
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimIconAlpha:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_b6

    invoke-static {p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    if-eq v1, v6, :cond_aa

    if-ne v1, v5, :cond_b4

    :cond_aa
    const v1, 0x3f4ccccd  # 0.8f

    div-float v1, v0, v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_b4
    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimIconAlpha:F

    :cond_b6
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentDimIconBlur:I

    if-eq v0, v1, :cond_ca

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimIconBlur:I

    :cond_ca
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetReplaceIconAlpha:F

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTmpCurrentReplaceIconAlpha:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_dd

    invoke-static {p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentReplaceIconAlpha:F

    :cond_dd
    return-void
.end method

.method public initialCropAndPosition()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPrepareWindowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    iget v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->adjustTargetCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPreparePosition:Landroid/graphics/Point;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareLeftPosition:Landroid/graphics/Point;

    goto :goto_1d

    :cond_19
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareRightPosition:Landroid/graphics/Point;

    :goto_1d
    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPrepareWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->adjustTargetPosition(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method

.method public initialTips()V
    .registers 11

    const-string v0, "OplusZoomToFlexibleBaseAnimationState"

    const-string v1, "initialize tips begin"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3def9db2  # 0.117f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsTopOffer:I

    new-instance v1, Landroid/view/SurfaceControlViewHost;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$layout;->oplus_flexible_replace_tips_layout:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v2, Lcom/android/wm/shell/R$id;->flexible_replace_tips_text:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mUiMode:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/wm/shell/R$color;->flexible_enter_split_text_color_night:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_51

    :cond_50
    const/4 v3, -0x1

    :goto_51
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7f6

    const/16 v8, 0x18

    const/4 v9, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3efae148  # 0.49f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v3, "replaceTips"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v3, v1, v2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v1

    if-eqz v1, :cond_9f

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    :cond_9f
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f028f5c  # 0.51f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPrepareWindowCrop:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    int-to-float v1, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsTopOffer:I

    add-int/2addr v4, p0

    int-to-float p0, v4

    invoke-virtual {v2, v3, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const-string p0, "initialize tips over"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWhole:Ljava/lang/String;

    const-string v2, "initializeAnimationSource"

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildContainerSurface(Landroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v12, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBack:Ljava/lang/String;

    const-string v13, "initializeAnimationSource"

    move/from16 v9, p4

    move/from16 v10, p4

    move-object/from16 v11, p1

    invoke-static/range {v8 .. v13}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    sget v8, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->WHOLE_BACK_COLOR:I

    iget-object v10, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskSurface:Landroid/view/SurfaceControl;

    new-instance v11, Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v6, 0x0

    invoke-direct {v11, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v12, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/16 v18, 0x0

    move/from16 v13, p4

    move/from16 v14, p4

    move-object/from16 v15, p2

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v8 .. v18}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    iget-object v12, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimBack:Ljava/lang/String;

    const-string v13, "initializeAnimationSource"

    move/from16 v9, p4

    move/from16 v10, p4

    move-object/from16 v11, p1

    invoke-static/range {v8 .. v13}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v8, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDimColor:I

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v13, p4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v8 .. v18}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v8, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v12, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIcon:Ljava/lang/String;

    const-string v13, "initializeAnimationSource"

    move/from16 v9, p4

    move/from16 v10, p4

    move-object/from16 v11, p1

    invoke-static/range {v8 .. v13}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v1, v2}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->generateSurfacePkgNameByUserId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v13, p4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v8 .. v18}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget-object v12, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimIcon:Ljava/lang/String;

    const-string v13, "initializeAnimationSource"

    move/from16 v9, p4

    move/from16 v10, p4

    move-object/from16 v11, p1

    invoke-static/range {v8 .. v13}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForIconSurface:Landroid/view/SurfaceControl;

    const-string v1, "#CC474747"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForIconSurface:Landroid/view/SurfaceControl;

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v13, p4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v8 .. v18}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    iget-object v0, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget v8, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mMode:I

    move-object/from16 v0, p0

    move/from16 v3, p4

    move/from16 v4, p4

    move v9, v6

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->adjusInitialCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZI)V

    iget-object v0, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v0, v1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->adjustInitialPosition(Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x42040000  # 33.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v9}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v9}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialPosition:Landroid/graphics/Point;

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iget-object v0, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetPosition:Landroid/graphics/Point;

    iget-object v1, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iput v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWholeAlpha:F

    iput v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWholeAlpha:F

    iput v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentBackAlpha:F

    iput v2, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetBackAlpha:F

    iput v3, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackAlpha:F

    iput v3, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackAlpha:F

    iput v9, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimBackBlur:I

    iput v9, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimBackBlur:I

    iput v3, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    iput v3, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetIconAlpha:F

    iput v3, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimIconAlpha:F

    iput v3, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconAlpha:F

    iput v9, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentDimIconBlur:I

    iput v9, v7, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetDimIconBlur:I

    return-void
.end method

.method public resetAll()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_26
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_39
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4c
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5f
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForIconSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_72
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_8c
    return-void
.end method

.method public setRectInfo(Landroid/graphics/Rect;)V
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    iget p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdWindowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->adjustCommonCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdPosition:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->adjustTargetPosition(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRectInfo windowCrop:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " position:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mAddThirdPosition:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusZoomToFlexibleBaseAnimationState"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
