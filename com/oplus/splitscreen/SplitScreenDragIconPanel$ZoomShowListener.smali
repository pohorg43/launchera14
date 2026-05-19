.class Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;
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
    name = "ZoomShowListener"
.end annotation


# instance fields
.field private mEndX:F

.field private mEndY:F

.field private mFlexibleZoomListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$FlexibleZoomListener;

.field private mIsLand:Z

.field private mScaleRect:Landroid/graphics/Rect;

.field private mStartX:F

.field private mStartY:F

.field private mZoomRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;


# direct methods
.method private constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/oplus/splitscreen/SplitScreenDragIconPanel$FlexibleZoomListener;ZLandroid/graphics/Rect;)V
    .registers 6

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mFlexibleZoomListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$FlexibleZoomListener;

    iput-boolean p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mIsLand:Z

    iput-object p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p1, p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mStartX:F

    int-to-float p2, p2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mStartY:F

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mIsLand:Z

    if-eqz v0, :cond_43

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mEndX:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mEndY:F

    goto :goto_55

    :cond_43
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mEndX:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mEndY:F

    :goto_55
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result p2

    iget-object p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result p3

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mScaleRect:Landroid/graphics/Rect;

    :try_start_69
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_13b

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_13b

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p1

    if-eqz p1, :cond_a6

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p3, p3, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p2, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    const p3, 0x7fffffff

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_a6
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p2, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    iget p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mStartX:F

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mStartY:F

    invoke-virtual {p2, p1, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p2, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p2, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    const p3, 0x3f4ccccd  # 0.8f

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, -0x1

    const/4 p2, 0x3

    new-array p2, p2, [F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr p3, v1

    aput p3, p2, v0

    const/4 p3, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    aput v0, p2, p3

    const/4 p3, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    aput p1, p2, p3

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p3, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init mIsLand:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mIsLand:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",mZoomRect:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ",mZoomPanelWith:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",mZoomPanelHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13b
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_142} :catch_143

    goto :goto_15c

    :catch_143
    move-exception p0

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "init:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15c
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;Z)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mFlexibleZoomListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$FlexibleZoomListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$FlexibleZoomListener;->end()V

    :cond_a
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_32
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c8

    iget v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mStartX:F

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mEndX:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mStartY:F

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mEndY:F

    invoke-static {v2, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v3, v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mIsLand:Z

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mScaleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mScaleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_ae

    :cond_76
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mScaleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mScaleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_ae
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v0, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v0, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_c8
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ZoomShowListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
