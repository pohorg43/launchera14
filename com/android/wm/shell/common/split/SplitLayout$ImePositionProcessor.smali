.class Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/split/SplitLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImePositionProcessor"
.end annotation


# static fields
.field private static final ADJUSTED_NONFOCUS_DIM:F = 0.3f

.field private static final ADJUSTED_SPLIT_FRACTION_MAX:F = 0.7f


# instance fields
.field private mDimValue1:F

.field private mDimValue2:F

.field private final mDisplayId:I

.field private mEndImeTop:I

.field private mHasImeFocus:Z

.field private mImeShown:Z

.field private mLastDim1:F

.field private mLastDim2:F

.field private mLastTargetYOffset:I

.field private mLastYOffset:I

.field private mStartImeTop:I

.field private mTargetDim1:F

.field private mTargetDim2:F

.field private mTargetYOffset:I

.field private mYOffsetForIme:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;ILcom/android/wm/shell/common/split/SplitLayout$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    return p0
.end method

.method public static synthetic access$2000(Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getImeTargetPosition()I

    move-result p0

    return p0
.end method

.method public static synthetic access$2100(Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    return p0
.end method

.method private getImeTargetPosition()I
    .registers 3
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1700(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1500(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    move-result p0

    return p0
.end method

.method private getProgress(I)F
    .registers 4

    int-to-float p1, p1

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    int-to-float v1, v0

    sub-float/2addr p1, v1

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private getProgressValue(FFF)F
    .registers 4

    invoke-static {p2, p1, p3, p1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private getTargetYOffset()I
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->access$500(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3f333333  # 0.7f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method private onProgress(F)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim1:F

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim1:F

    invoke-direct {p0, v0, v1, p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getProgressValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim2:F

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim2:F

    invoke-direct {p0, v0, v1, p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getProgressValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getProgressValue(FFF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    return-void
.end method


# virtual methods
.method public adjustSurfaceLayoutForIme(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z
    .registers 13

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    const v1, 0x3a83126f  # 0.001f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    :cond_11
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1800(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object v0

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/DisplayImeController;->isCurrentImeShowing(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v3

    :goto_22
    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    if-eqz v4, :cond_a5

    if-eqz p2, :cond_51

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, p2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_51
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object p2

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, p3, p2, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds2(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object p2

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p3}, Lcom/android/wm/shell/common/split/SplitLayout;->access$800(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p1, p4, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move p2, v2

    goto :goto_a6

    :cond_a5
    move p2, v3

    :goto_a6
    if-eqz v0, :cond_cb

    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    invoke-virtual {p1, p5, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    cmpl-float p3, p3, v1

    if-lez p3, :cond_b6

    move p3, v2

    goto :goto_b7

    :cond_b6
    move p3, v3

    :goto_b7
    invoke-virtual {p2, p5, p3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    invoke-virtual {p1, p6, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_c7

    move v3, v2

    :cond_c7
    invoke-virtual {p1, p6, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_cc

    :cond_cb
    move v2, p2

    :goto_cc
    return v2
.end method

.method public hideImeDimLayerWhenRemoveImeSurface(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 9

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    const v1, 0x3a83126f  # 0.001f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-gtz v0, :cond_13

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v2

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getImeTargetPosition()I

    move-result v1

    const-string v3, "hideImeDimLayer show="

    const-string v4, ",imeTargetPosition="

    const-string v5, ",mDimValue1="

    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",mDimValue2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SplitLayout"

    invoke-static {v4, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_62

    const/4 v0, -0x1

    if-eq v1, v0, :cond_62

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim1:F

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim1:F

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim2:F

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim2:F

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_62
    return-void
.end method

.method public imeAnimationNotStart()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1600(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitWindowManager;->getDividerView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->isMoveDivider()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public onImeControlTargetChanged(IZ)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    if-nez p2, :cond_2e

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 p2, 0x1

    const-string/jumbo v0, "onImeControlTargetChanged"

    invoke-virtual {p1, p2, p2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(ZZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1500(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1500(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_2e
    return-void
.end method

.method public onImeEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    if-ne p1, p3, :cond_1b

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_b

    goto :goto_1b

    :cond_b
    const/high16 p1, 0x3f800000  # 1.0f

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->onProgress(F)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1500(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onImePositionChanged(IILandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    if-ne p1, p3, :cond_1b

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    if-nez p1, :cond_9

    goto :goto_1b

    :cond_9
    invoke-direct {p0, p2}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getProgress(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->onProgress(F)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1500(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onImeStartPositioning(IIIZZLandroid/view/SurfaceControl$Transaction;)I
    .registers 9

    iget p6, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    const/4 v0, 0x0

    if-ne p1, p6, :cond_100

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$900(Lcom/android/wm/shell/common/split/SplitLayout;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_100

    :cond_f
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1200(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getImeTargetPosition()I

    move-result p6

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1000(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1100(Landroid/graphics/Rect;)Z

    move-result v1

    invoke-virtual {p1, p6, v1, p4, p5}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->hookImePositionIfNeeded(IZZZ)I

    move-result p1

    const/4 p6, -0x1

    const/4 v1, 0x1

    if-eq p1, p6, :cond_2d

    move p6, v1

    goto :goto_2e

    :cond_2d
    move p6, v0

    :goto_2e
    iput-boolean p6, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    if-nez p6, :cond_33

    return v0

    :cond_33
    if-eqz p4, :cond_37

    move p6, p2

    goto :goto_38

    :cond_37
    move p6, p3

    :goto_38
    iput p6, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    if-eqz p4, :cond_3d

    move p2, p3

    :cond_3d
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    iput-boolean p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim1:F

    const p2, 0x3e99999a  # 0.3f

    const/4 p3, 0x0

    if-ne p1, v1, :cond_57

    if-eqz p4, :cond_57

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p4}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1300(Lcom/android/wm/shell/common/split/SplitLayout;)Z

    move-result p4

    if-eqz p4, :cond_57

    move p4, p2

    goto :goto_58

    :cond_57
    move p4, p3

    :goto_58
    iput p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim1:F

    iget p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    iput p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim2:F

    if-nez p1, :cond_6d

    iget-boolean p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz p4, :cond_6d

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p4}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1300(Lcom/android/wm/shell/common/split/SplitLayout;)Z

    move-result p4

    if-eqz p4, :cond_6d

    goto :goto_6e

    :cond_6d
    move p2, p3

    :goto_6e
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim2:F

    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    if-ne p1, v1, :cond_8a

    if-nez p5, :cond_8a

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1000(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1100(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_8a

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz p1, :cond_8a

    move p1, v1

    goto :goto_8b

    :cond_8a
    move p1, v0

    :goto_8b
    if-eqz p1, :cond_92

    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getTargetYOffset()I

    move-result p1

    goto :goto_93

    :cond_92
    move p1, v0

    :goto_93
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1200(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iget p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastTargetYOffset:I

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1400(Lcom/android/wm/shell/common/split/SplitLayout;)I

    move-result p6

    invoke-virtual {p1, p2, p3, p4, p6}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->hookImeTargetYOffsetWhenBeyondScreen(Lcom/android/wm/shell/common/split/SplitLayout;III)Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    iget p2, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastTargetYOffset:I

    if-eq p2, p3, :cond_bd

    move p3, v1

    goto :goto_be

    :cond_bd
    move p3, v0

    :goto_be
    if-eqz p3, :cond_df

    if-nez p2, :cond_ce

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1500(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    move-result-object p2

    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-interface {p2, v0, v0, p4}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V

    goto :goto_db

    :cond_ce
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1500(Lcom/android/wm/shell/common/split/SplitLayout;)Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    move-result-object p2

    iget p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iget-object p6, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-interface {p2, v0, p4, p6}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V

    :goto_db
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastTargetYOffset:I

    :cond_df
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz p4, :cond_f2

    iget-boolean p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    if-eqz p4, :cond_f2

    if-nez p5, :cond_f2

    if-eqz p3, :cond_f0

    if-eqz p1, :cond_f0

    goto :goto_f2

    :cond_f0
    move p1, v0

    goto :goto_f3

    :cond_f2
    :goto_f2
    move p1, v1

    :goto_f3
    const-string/jumbo p3, "onImeStartPositioning"

    invoke-virtual {p2, p1, v1, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(ZZLjava/lang/String;)V

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    if-eq p1, p0, :cond_100

    move v0, v1

    :cond_100
    :goto_100
    return v0
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim1:F

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim1:F

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim2:F

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim2:F

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastTargetYOffset:I

    return-void
.end method

.method public updateDimLayerForImeWhenKeyguardVisibilityChanged(ZLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 8

    if-eqz p2, :cond_8a

    if-eqz p3, :cond_8a

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_8a

    :cond_12
    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getImeTargetPosition()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    const v2, 0x3a83126f  # 0.001f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2c

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ne v1, v3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x0

    :cond_2c
    :goto_2c
    const-string/jumbo v1, "updateDimLayerForImeWhenKeyguardVisibilityChanged, isImeShown="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDimValue1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mDimValue2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", imeTargetPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isKeyguardShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplitLayout"

    invoke-static {v2, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz v1, :cond_8a

    if-eqz v3, :cond_8a

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz p1, :cond_7a

    const/4 p0, 0x0

    invoke-virtual {v1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_87

    :cond_7a
    const/4 p1, -0x1

    if-eq v0, p1, :cond_87

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    invoke-virtual {v1, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    invoke-virtual {v1, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_87
    :goto_87
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public updateImeTargetPosition()V
    .registers 5

    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getImeTargetPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v2, v1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    iput-boolean v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    if-nez v2, :cond_10

    return-void

    :cond_10
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim1:F

    const v2, 0x3e99999a  # 0.3f

    const/4 v3, 0x0

    if-ne v0, v1, :cond_28

    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1300(Lcom/android/wm/shell/common/split/SplitLayout;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v2

    goto :goto_29

    :cond_28
    move v1, v3

    :goto_29
    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim1:F

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim2:F

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->access$1300(Lcom/android/wm/shell/common/split/SplitLayout;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_41

    :cond_40
    move v2, v3

    :goto_41
    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim2:F

    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    return-void
.end method
