.class Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;
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
    name = "HideBackgroundListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;


# direct methods
.method private constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;Z)V

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

    :try_start_a
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v2, v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    sub-float v3, v1, p1

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2d
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v2, v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$2000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    sub-float/2addr v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_4d
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$HideBackgroundListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_54} :catch_55

    goto :goto_6e

    :catch_55
    move-exception p0

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HideBackgroundListener onAnimationUpdate error:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    return-void
.end method
