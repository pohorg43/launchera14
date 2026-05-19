.class Lcom/android/launcher/batchdrag/BatchDragView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;IZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/batchdrag/BatchDragView;

.field public final synthetic val$dropViewScale:F

.field public final synthetic val$finalAlpha:F

.field public final synthetic val$finalScaleX:F

.field public final synthetic val$finalScaleY:F

.field public final synthetic val$from:Landroid/graphics/Rect;

.field public final synthetic val$initAlpha:F

.field public final synthetic val$initScaleX:F

.field public final synthetic val$initScaleY:F

.field public final synthetic val$isDropFolder:Z

.field public final synthetic val$to:Landroid/graphics/Rect;

.field public final synthetic val$view:Lcom/android/launcher/batchdrag/BatchDragView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragView;Lcom/android/launcher/batchdrag/BatchDragView;FFFFFFFZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 13

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    iput-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$view:Lcom/android/launcher/batchdrag/BatchDragView;

    iput p3, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$initScaleX:F

    iput p4, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$dropViewScale:F

    iput p5, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$initScaleY:F

    iput p6, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$finalScaleX:F

    iput p7, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$finalScaleY:F

    iput p8, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$finalAlpha:F

    iput p9, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$initAlpha:F

    iput-boolean p10, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$isDropFolder:Z

    iput-object p11, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$from:Landroid/graphics/Rect;

    iput-object p12, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$to:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 13

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$view:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$view:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$initScaleX:F

    iget v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$dropViewScale:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$initScaleY:F

    mul-float/2addr v4, v3

    iget v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$finalScaleX:F

    mul-float/2addr v3, p1

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float v6, v5, p1

    mul-float v7, v2, v6

    add-float/2addr v7, v3

    iget v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$finalScaleY:F

    mul-float/2addr v3, p1

    mul-float v8, v4, v6

    add-float/2addr v8, v3

    iget v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$finalAlpha:F

    mul-float/2addr v3, p1

    iget v9, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$initAlpha:F

    mul-float/2addr v9, v6

    add-float/2addr v9, v3

    iget-boolean v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$isDropFolder:Z

    const/4 v6, 0x0

    const/high16 v10, 0x40000000  # 2.0f

    if-eqz v3, :cond_3e

    move v2, v6

    goto :goto_42

    :cond_3e
    sub-float/2addr v2, v5

    int-to-float v0, v0

    mul-float/2addr v2, v0

    div-float/2addr v2, v10

    :goto_42
    if-eqz v3, :cond_45

    goto :goto_4a

    :cond_45
    sub-float/2addr v4, v5

    int-to-float v0, v1

    mul-float/2addr v4, v0

    div-float v6, v4, v10

    :goto_4a
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$from:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-static {v2}, Lcom/android/launcher/batchdrag/BatchDragView;->access$000(Lcom/android/launcher/batchdrag/BatchDragView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-static {v2}, Lcom/android/launcher/batchdrag/BatchDragView;->access$000(Lcom/android/launcher/batchdrag/BatchDragView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-static {v0}, Lcom/android/launcher/batchdrag/BatchDragView;->access$100(Lcom/android/launcher/batchdrag/BatchDragView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-static {v0}, Lcom/android/launcher/batchdrag/BatchDragView;->access$200(Lcom/android/launcher/batchdrag/BatchDragView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-static {v2}, Lcom/android/launcher/batchdrag/BatchDragView;->access$100(Lcom/android/launcher/batchdrag/BatchDragView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_9a

    :cond_99
    const/4 v0, 0x0

    :goto_9a
    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$from:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$to:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$from:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$from:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_cd

    :cond_c1
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_cd
    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
