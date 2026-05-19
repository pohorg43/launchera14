.class Lcom/android/wm/shell/draganddrop/DragLayoutExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ALPHA_FULL:F = 1.0f

.field private static final DEFAULT:I = -0x1

.field private static final HALF_FLOAT:F = 2.0f

.field private static final NUM_1:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.android.wm.shell.draganddrop.DragLayoutExt"

.field private static final ZOOM_BG_COLOR:Ljava/lang/String; = "#F2F2F2"

.field private static final ZOOM_FRONT_BG_TIME:J = 0x215L

.field private static final Z_ORDER:I = 0x2


# instance fields
.field private mAnimateForSingleTask:Landroid/animation/Animator;

.field private mBlurSurfaceSession:Landroid/view/SurfaceSession;

.field private mContext:Landroid/content/Context;

.field private mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

.field private mDragNoSupportSplitTipsView:Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;

.field private mDragRootView:Landroid/widget/FrameLayout;

.field private mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

.field private mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

.field private mDropZoneViewBlur:Landroid/view/SurfaceControl;

.field private final mEnable:Z

.field private mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

.field private mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

.field private mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mBlurSurfaceSession:Landroid/view/SurfaceSession;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasColorSplitFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mEnable:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/draganddrop/DragLayoutExt;Landroid/animation/ValueAnimator;ZLandroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->lambda$animateFrontWhenDrag$0(Landroid/animation/ValueAnimator;ZLandroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private animateDropZoneViewPositionLand(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;IIFZ)V
    .registers 9

    if-eqz p6, :cond_2d

    iget-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p5

    invoke-virtual {p6, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setMarginPercent(F)V

    iget-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p6, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setMarginPercent(F)V

    int-to-float p3, p3

    mul-float/2addr p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float p3, p4

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p0

    sub-int/2addr p0, p4

    int-to-float p0, p0

    mul-float/2addr p0, p5

    add-float/2addr p0, p3

    float-to-double p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p0, p3

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_5a

    :cond_2d
    iget-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p6, p5}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setMarginPercent(F)V

    iget-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p6, p5}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setMarginPercent(F)V

    int-to-float p3, p3

    mul-float/2addr p3, p5

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    iget-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p6

    int-to-float p6, p6

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p0

    sub-int/2addr p4, p0

    int-to-float p0, p4

    mul-float/2addr p0, p5

    add-float/2addr p0, p6

    float-to-double p4, p0

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-int p0, p4

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_5a
    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 p0, -0x1

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-void
.end method

.method private animateDropZoneViewPositionPort(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;IIFZ)V
    .registers 9

    if-eqz p6, :cond_2d

    iget-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p5

    invoke-virtual {p6, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setMarginPercent(F)V

    iget-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p6, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setMarginPercent(F)V

    int-to-float p3, p3

    mul-float/2addr p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float p3, p4

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    sub-int/2addr p0, p4

    int-to-float p0, p0

    mul-float/2addr p0, p5

    add-float/2addr p0, p3

    float-to-double p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p0, p3

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_5a

    :cond_2d
    iget-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p6, p5}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setMarginPercent(F)V

    iget-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p6, p5}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setMarginPercent(F)V

    int-to-float p3, p3

    mul-float/2addr p3, p5

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    sub-int/2addr p4, p0

    int-to-float p0, p4

    mul-float/2addr p0, p5

    add-float/2addr p0, p3

    float-to-double p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p0, p3

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_5a
    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 p0, -0x1

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    return-void
.end method

.method private animateForSingleTask(IIZZ)V
    .registers 11

    sget-object v0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateForPad animateForSingleTask state:"

    const-string v2, ",oldState:"

    const-string v3, ",alreadyInSplit:"

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isInSideBarRegion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_68

    if-nez p3, :cond_4a

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v5, v3, v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingMargin(ZZ)V

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v5, v3, v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingMargin(ZZ)V

    :cond_4a
    const/4 v4, -0x1

    if-ne p2, v4, :cond_53

    if-nez p3, :cond_52

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->fullWhenDragBegin(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_52
    return-void

    :cond_53
    if-ne p2, v2, :cond_5b

    if-nez p4, :cond_5a

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->fullWhenDragBegin(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_5a
    return-void

    :cond_5b
    if-nez p4, :cond_8e

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p3, v3}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowIcon(Z)V

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p3, v3}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowIcon(Z)V

    goto :goto_8e

    :cond_68
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p3, v3}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p3, v3}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p3, v4, v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingMargin(ZZ)V

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p3, v4, v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingMargin(ZZ)V

    if-eq p2, v2, :cond_8e

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_8e
    :goto_8e
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateFrontWhenDrag(IILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method private animateFrontWhenDrag(IILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 20

    move-object v11, p0

    move/from16 v12, p1

    move-object/from16 v9, p3

    iget-object v0, v11, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->getAdjustConfigOrientation(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    move v3, v1

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    move v3, v0

    :goto_1c
    iget-object v0, v11, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragLayout;->getDividerSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v11, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, v4, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v2, 0x3f800000  # 1.0f

    iget-object v7, v11, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    if-eqz v3, :cond_57

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v5

    invoke-direct {p0, v1, v7, v12, v2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->judgeAbortPort(IIII)Z

    move-result v1

    goto :goto_60

    :cond_57
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {p0, v0, v1, v12, v2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->judgeAbortLand(IIII)Z

    move-result v1

    :goto_60
    if-eqz v1, :cond_79

    sget-object v1, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateFrontWhenDrag no need startW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_79
    iget-object v0, v11, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mAnimateForSingleTask:Landroid/animation/Animator;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, v11, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mAnimateForSingleTask:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_88
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_be

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x215

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-object v13, v11, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mAnimateForSingleTask:Landroid/animation/Animator;

    new-instance v14, Lcom/android/wm/shell/draganddrop/d;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v13

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/draganddrop/d;-><init>(Lcom/android/wm/shell/draganddrop/DragLayoutExt;Landroid/animation/ValueAnimator;ZLandroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/wm/shell/draganddrop/DragLayoutExt$1;

    invoke-direct {v0, p0, v12}, Lcom/android/wm/shell/draganddrop/DragLayoutExt$1;-><init>(Lcom/android/wm/shell/draganddrop/DragLayoutExt;I)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_be
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private animateSplit(IZ)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_27

    if-ne p1, v0, :cond_8

    goto :goto_27

    :cond_8
    const/4 v2, 0x3

    if-eq p1, v2, :cond_1c

    const/4 v2, 0x4

    if-ne p1, v2, :cond_f

    goto :goto_1c

    :cond_f
    if-eqz p2, :cond_31

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(Z)V

    return-void

    :cond_1c
    :goto_1c
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v2, v1, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(ZZ)V

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(ZZ)V

    goto :goto_31

    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(ZZ)V

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v2, v1, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(ZZ)V

    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/DragLayout;->getCurrentTarget()Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v1

    iget v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateForSingleTask(IIZZ)V

    return-void
.end method

.method private fullWhenDragBegin(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setMarginPercent(F)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setMarginPercent(F)V

    const/4 v0, 0x0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private judgeAbortLand(IIII)Z
    .registers 7

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_9

    const/4 v1, 0x3

    if-ne p3, v1, :cond_8

    goto :goto_9

    :cond_8
    return p0

    :cond_9
    :goto_9
    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, p4, :cond_11

    move p0, v0

    :cond_11
    return p0
.end method

.method private judgeAbortPort(IIII)Z
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_9

    const/4 v0, 0x4

    if-ne p3, v0, :cond_8

    goto :goto_9

    :cond_8
    return p0

    :cond_9
    :goto_9
    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, p4, :cond_11

    const/4 p0, 0x1

    :cond_11
    return p0
.end method

.method private synthetic lambda$animateFrontWhenDrag$0(Landroid/animation/ValueAnimator;ZLandroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 21

    move-object v8, p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    if-eqz p2, :cond_27

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v3, v0, p4

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v4, v0, p4

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->prepareAnimateDropZoneViewPositionPort(IIIILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;F)V

    goto :goto_40

    :cond_27
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v3, v0, p4

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v4, v0, p4

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->prepareAnimateDropZoneViewPositionLand(IIIILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;F)V

    :goto_40
    iget-object v0, v8, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/draganddrop/DropZoneView;->updateIconMargin(F)V

    iget-object v0, v8, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/draganddrop/DropZoneView;->updateIconMargin(F)V

    return-void
.end method

.method private prepareAnimateDropZoneViewPositionLand(IIIILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;F)V
    .registers 18

    move v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p5

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateDropZoneViewPositionLand(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;IIFZ)V

    goto :goto_3d

    :cond_11
    const/4 v2, 0x3

    if-ne v0, v2, :cond_21

    const/4 v9, 0x0

    move-object v3, p0

    move-object/from16 v4, p6

    move-object v5, p5

    move v6, p4

    move v7, p3

    move/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateDropZoneViewPositionLand(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;IIFZ)V

    goto :goto_3d

    :cond_21
    move v0, p2

    if-ne v0, v1, :cond_31

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p5

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateDropZoneViewPositionLand(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;IIFZ)V

    goto :goto_3d

    :cond_31
    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p6

    move-object v2, p5

    move v3, p4

    move v4, p3

    move/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateDropZoneViewPositionLand(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;IIFZ)V

    :goto_3d
    return-void
.end method

.method private prepareAnimateDropZoneViewPositionPort(IIIILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;F)V
    .registers 18

    move v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p5

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateDropZoneViewPositionPort(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;IIFZ)V

    goto :goto_3d

    :cond_11
    const/4 v2, 0x4

    if-ne v0, v2, :cond_21

    const/4 v9, 0x0

    move-object v3, p0

    move-object/from16 v4, p6

    move-object v5, p5

    move v6, p4

    move v7, p3

    move/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateDropZoneViewPositionPort(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;IIFZ)V

    goto :goto_3d

    :cond_21
    move v0, p2

    if-ne v0, v1, :cond_31

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p5

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateDropZoneViewPositionPort(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;IIFZ)V

    goto :goto_3d

    :cond_31
    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p6

    move-object v2, p5

    move v3, p4

    move v4, p3

    move/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateDropZoneViewPositionPort(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;IIFZ)V

    :goto_3d
    return-void
.end method

.method private updateForPad(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    if-nez v0, :cond_d

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateForPad null"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragLayout;->isTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateForPad mIsTypeHome"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isInSideBarRegion(Landroid/view/DragEvent;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-boolean v3, v3, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsEnterNoSupportMode:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_60

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p2, v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p2, v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    sget-object p2, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateForPad mIsEnterNoSupportMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5f

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_5f

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->showDropZoneViewBlurIfNeed()V

    :cond_5f
    return-void

    :cond_60
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->isDragSupportSplit()Z

    move-result v3

    if-nez v3, :cond_7e

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p1, v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p1, v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/draganddrop/DragLayout;->setCurrentTarget(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateForPad isDragSupportSplit false return"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7e
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v5, 0x0

    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMinimized()Z

    move-result v3

    if-eqz v3, :cond_8b

    move v3, v4

    goto :goto_8c

    :cond_8b
    move v3, v5

    :goto_8c
    if-eqz v3, :cond_9c

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/draganddrop/DragLayout;->setCurrentTarget(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateForPad isMini return"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9c
    if-nez v2, :cond_a2

    if-nez v0, :cond_a9

    if-nez v1, :cond_a9

    :cond_a2
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getInSideBarTarget()Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object p2

    move v2, v4

    :cond_a9
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragLayout;->getCurrentTarget()Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    if-eq v0, p2, :cond_e2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_bc

    goto :goto_bd

    :cond_bc
    move v4, v5

    :goto_bd
    if-nez p2, :cond_ce

    sget-object v0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateForPad target null"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1, p1}, Lcom/android/wm/shell/draganddrop/DragLayout;->animateSplitContainers(ZLjava/lang/Runnable;Landroid/view/DragEvent;)V

    goto :goto_dd

    :cond_ce
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragLayout;->getCurrentTarget()Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    if-nez v0, :cond_da

    invoke-direct {p0, p2, p1, v4, v2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->updateForPadWhenDragBegin(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/view/DragEvent;ZZ)V

    goto :goto_dd

    :cond_da
    invoke-direct {p0, p2, v4, v2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->updateForPadWhenDragChanged(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;ZZ)V

    :goto_dd
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/draganddrop/DragLayout;->setCurrentTarget(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V

    :cond_e2
    return-void
.end method

.method private updateForPadWhenDragBegin(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/view/DragEvent;ZZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getNumTargets()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    sget-object p1, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateForPad begin full:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/draganddrop/DragLayout;->animateFullscreenContainer(Z)V

    goto :goto_7d

    :cond_26
    sget-object v0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateForPad begin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",alreadyInSplit:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",isInSideBarRegion:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0, v0}, Lcom/android/wm/shell/draganddrop/DragLayout;->animateSplitContainers(ZLjava/lang/Runnable;Landroid/view/DragEvent;)V

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(Z)V

    const/4 p2, -0x1

    if-eqz p3, :cond_73

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p3, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p3, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p3, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(Z)V

    if-nez p4, :cond_7d

    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateForSingleTask(IIZZ)V

    goto :goto_7d

    :cond_73
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p3, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(Z)V

    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateForSingleTask(IIZZ)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private updateForPadWhenDragChanged(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;ZZ)V
    .registers 7

    if-eqz p2, :cond_8

    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateSplit(IZ)V

    goto :goto_3a

    :cond_8
    iget p2, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_23

    if-ne p2, v2, :cond_12

    goto :goto_23

    :cond_12
    const/4 v0, 0x3

    if-eq p2, v0, :cond_18

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2d

    :cond_18
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p2, v1, v2}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(ZZ)V

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p2, v2, v2}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(ZZ)V

    goto :goto_2d

    :cond_23
    :goto_23
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p2, v2, v2}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(ZZ)V

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p2, v1, v2}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(ZZ)V

    :cond_2d
    :goto_2d
    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/draganddrop/DragLayout;->getCurrentTarget()Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object p2

    iget p2, p2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->animateForSingleTask(IIZZ)V

    :goto_3a
    return-void
.end method


# virtual methods
.method public controlDropZoneBlurVisible(ZLandroid/view/DragEvent;Landroid/animation/Animator;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-boolean v0, v0, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsEnterNoSupportMode:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    sget-object v0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string v1, "controlDropZoneBlurVisible() visible="

    const-string v2, " action="

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",animator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->showDropZoneViewBlurIfNeed()V

    goto :goto_4c

    :cond_35
    if-eqz p3, :cond_40

    new-instance p1, Lcom/android/wm/shell/draganddrop/DragLayoutExt$2;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt$2;-><init>(Lcom/android/wm/shell/draganddrop/DragLayoutExt;I)V

    invoke-virtual {p3, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4c

    :cond_40
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    const/4 p1, 0x3

    if-eq p2, p1, :cond_49

    const/4 p1, 0x4

    if-ne p2, p1, :cond_4c

    :cond_49
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->releaseDropZoneViewBlur()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public controlNoSupportSplitTipVisible(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)V
    .registers 8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    if-eqz p2, :cond_33

    :cond_d
    sget-object v1, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string v2, "controlNoSupportSplitTipVisible() "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",changed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->showDropZoneViewBlurIfNeed()V

    goto :goto_6d

    :cond_3a
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4c

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_48

    return-void

    :cond_48
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    goto :goto_6d

    :cond_4c
    const/4 v1, 0x3

    if-ne p1, v1, :cond_56

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->releaseDropZoneViewBlur()V

    goto :goto_6d

    :cond_56
    const/4 v1, 0x4

    if-ne p1, v1, :cond_60

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->releaseDropZoneViewBlur()V

    goto :goto_6d

    :cond_60
    if-ne p1, v0, :cond_6d

    if-eqz p2, :cond_6d

    if-nez p3, :cond_6a

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    goto :goto_6d

    :cond_6a
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->showDropZoneViewBlurIfNeed()V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public getAdjustConfigOrientation(I)I
    .registers 2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result p0

    if-nez p0, :cond_7

    return p1

    :cond_7
    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x2

    goto :goto_10

    :cond_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public getApplicationIcon(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDividerSize(Landroid/content/res/Resources;)I
    .registers 2

    invoke-static {p1}, Lcom/oplus/splitscreen/DividerUtils;->getDividerSize(Landroid/content/res/Resources;)I

    move-result p0

    return p0
.end method

.method public hideDropZoneViewBlur()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->setDragNoSupportSplitTipsShowIfNeeded(Z)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_14

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_14
    return-void
.end method

.method public hideForPad(Landroid/view/DragEvent;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p1, v0, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowIcon(ZZ)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowIcon(ZZ)V

    :cond_21
    return v0
.end method

.method public hookTaskInfoForSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->hookTaskInfoForSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p1
.end method

.method public init(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Context;Lcom/android/wm/shell/draganddrop/DragLayout;Lcom/android/wm/shell/draganddrop/DropZoneView;Lcom/android/wm/shell/draganddrop/DropZoneView;)V
    .registers 7

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getExtImpl()Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    iput-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    return-void
.end method

.method public isDragSupportSplit()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isDragSupportSplit()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isDragSupportZoom()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isDragSupportZoom()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isInPocketStudioMode(Landroid/view/DragEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_isSupportPocketStudio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isSupportApkCalled(Landroid/view/DragEvent;)Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string p1, "PocketStudio mode"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedEnterNoSupportMode(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    new-instance p0, Lcom/oplus/splitscreen/OplusRunningTaskInfo;

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/OplusRunningTaskInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/oplus/splitscreen/OplusRunningTaskInfo;->getIsSupportSplitScreenMultiWindow()Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isSideBarDragging()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isSideBarDragging()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isZoom()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isZoom()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public needInterceptDrag()Z
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->getDragItemInfo()Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_4b

    iget-boolean v1, v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isVisible:Z

    if-eqz v1, :cond_4b

    iget-boolean v1, v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isRunning:Z

    if-eqz v1, :cond_4b

    iget v1, v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->displayId:I

    if-nez v1, :cond_4b

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getPackName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->getApplicationNameByPkgName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    sget-object v2, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needInterceptDrag() has opened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showAppHasOpenedWarn(Ljava/lang/CharSequence;I)V

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    return v1
.end method

.method public notifyDragAction(Landroid/view/DragEvent;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->notifyDragAction(Landroid/view/DragEvent;IZ)V

    :cond_8
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->isDragSupportZoom()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_23

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->updateForPad(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V

    :cond_23
    return-void
.end method

.method public onDragEnterOrExited(Landroid/view/DragEvent;Z)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    goto :goto_12

    :cond_11
    move v2, v0

    :goto_12
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    goto :goto_1b

    :cond_1a
    move v3, v0

    :goto_1b
    const/4 v4, 0x2

    if-eq v1, v4, :cond_4d

    sget-object v5, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onDragEnterOrExited() "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",hasDropped="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",posX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",posY="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-boolean v2, v2, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsEnterNoSupportMode:Z

    if-eqz v2, :cond_59

    if-eq v1, v4, :cond_59

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->controlNoSupportSplitTipVisible(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)V

    :cond_59
    const/4 v0, 0x5

    if-ne v1, v0, :cond_5d

    goto :goto_6e

    :cond_5d
    const/4 v0, 0x6

    if-ne v1, v0, :cond_64

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->notifyDragAction(Landroid/view/DragEvent;Z)V

    goto :goto_6e

    :cond_64
    const/4 v0, 0x3

    if-ne v1, v0, :cond_68

    goto :goto_6e

    :cond_68
    const/4 v0, 0x4

    if-ne v1, v0, :cond_6e

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->notifyDragAction(Landroid/view/DragEvent;Z)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public onDragLocation(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    if-eq p2, p3, :cond_f

    const/4 v0, 0x1

    :cond_f
    if-eqz p3, :cond_14

    iget-object p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->hitRegion:Landroid/graphics/Rect;

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz v1, :cond_25

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->onDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-boolean v1, v1, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsEnterNoSupportMode:Z

    if-eqz v1, :cond_25

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->controlNoSupportSplitTipVisible(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)V

    :cond_25
    if-nez p1, :cond_30

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onDragLocation event null"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p2

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->isDragSupportZoom()Z

    move-result v0

    if-eqz p2, :cond_43

    if-eqz v0, :cond_43

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->updateForPad(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V

    :cond_43
    return-void
.end method

.method public onPrepare()V
    .registers 8

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->isDragSupportZoom()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->setIsEnterNoSupportMode(Z)V

    :cond_14
    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onPrepare() isForce="

    const-string v5, ",current="

    const-string v6, ",layoutOrient="

    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4e

    if-eq v1, v2, :cond_4e

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/draganddrop/DragLayout;->onConfigChanged(Landroid/content/res/Configuration;)V

    :cond_4e
    return-void
.end method

.method public onPrepareEnd(Landroid/view/DragEvent;)V
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->isDragSupportZoom()Z

    move-result v1

    if-nez p1, :cond_f

    return-void

    :cond_f
    if-eqz v0, :cond_17

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->updateForPad(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V

    :cond_17
    return-void
.end method

.method public prepareDropZoneViewBlur(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v2, 0x0

    const-string v3, "DropZone_blur_dim_layer"

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mBlurSurfaceSession:Landroid/view/SurfaceSession;

    invoke-static {v1, v2, v3, v4}, Lcom/android/wm/shell/common/SurfaceUtils;->makeDimLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    const v0, 0x7ffffffd

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const v0, 0x3f4ccccd  # 0.8f

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p2

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/high16 p2, -0x1000000

    goto :goto_52

    :cond_48
    if-eqz p2, :cond_51

    const-string p2, "#F2F2F2"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    goto :goto_52

    :cond_51
    const/4 p2, -0x1

    :goto_52
    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    const/high16 p2, 0x42a00000  # 80.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_6f

    :catch_6f
    return-void
.end method

.method public releaseDropZoneViewBlur()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->setDragNoSupportSplitTipsShowIfNeeded(Z)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    return-void
.end method

.method public setDragNoSupportSplitTipsShowIfNeeded(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    if-eqz v0, :cond_31

    iget-boolean v0, v0, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsEnterNoSupportMode:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowIcon(ZZ)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->getDropZoneViewExt()Lcom/android/wm/shell/draganddrop/DropZoneViewExt;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->getIconSizePad(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->getPadMarginBottom(Lcom/android/wm/shell/draganddrop/DragLayout;I)I

    move-result v1

    :cond_28
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragNoSupportSplitTipsView:Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mHookTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p1, p0, v1}, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->setDragNoSupportSplitTipsShowIfNeeded(ZLandroid/app/ActivityManager$RunningTaskInfo;I)V

    :cond_31
    return-void
.end method

.method public setDragRootViewWhenCreate(Landroid/widget/FrameLayout;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragRootView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragNoSupportSplitTipsView:Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;

    return-void
.end method

.method public setIsEnterNoSupportMode(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->setIsEnterNoSupportMode(Z)V

    :cond_7
    return-void
.end method

.method public setStatusDragToSplitMiniZed(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->setStatusDragToSplitMiniZed(Z)V

    :cond_7
    return-void
.end method

.method public shouldHideDragSurface()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->isSideBarDragging()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public showDropZoneViewBlurIfNeed()V
    .registers 3

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->setDragNoSupportSplitTipsShowIfNeeded(Z)V

    return-void
.end method
