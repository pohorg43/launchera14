.class Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitScreenDragIconPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScalePaneListener"
.end annotation


# instance fields
.field private isEnlarge:Z

.field private panelOffsetRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;


# direct methods
.method private constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->isEnlarge:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    return-void
.end method


# virtual methods
.method public getPanelHeight()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr v0, p0

    :cond_f
    return v0
.end method

.method public getPanelWidth()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr v0, p0

    :cond_f
    return v0
.end method

.method public init(Landroid/graphics/Rect;Z)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    iput-boolean p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->isEnlarge:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2202(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->isEnlarge:Z

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;ZZ)V

    :cond_14
    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScaleAnimation:onAnimationEnd mPanelSurface="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->isEnlarge:Z

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    const/4 p1, 0x1

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;ZZ)V

    :cond_e
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_155

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_155

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_155

    :try_start_26
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1200(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v4}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1200(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1702(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v1, v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v4}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1700(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    const v1, 0x3f4ccccd  # 0.8f

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v0, :cond_d7

    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Z

    move-result v5

    if-eqz v5, :cond_d7

    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v6, v5, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v6, v5, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getZoomCornerRadius()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v6, v5, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v5

    const/high16 v7, 0x42700000  # 60.0f

    iget-object v8, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v8}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_e2

    :cond_d7
    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v6, v5, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v6, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_e2
    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_101

    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_101

    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v6, v5, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v6, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_101
    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v4, v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v4, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v0, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_133
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_13a} :catch_13b

    goto :goto_15e

    :catch_13b
    move-exception p0

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mExpandScaleAnim failed surface is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15e

    :cond_155
    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mAnimSurfaceControl is null animEnlarge "

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15e
    return-void
.end method
