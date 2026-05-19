.class Lcom/oplus/zoom/ui/floathandle/FloatHandleView$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->removeFloatHandleViewWithAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$6;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$6;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$6;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$500(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$6;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateCurrentPosition(FF)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$6;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->relayout()V

    :cond_26
    return-void
.end method
