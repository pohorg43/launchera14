.class Lcom/android/launcher/pageindicators/OplusPageIndicator$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pageindicators/OplusPageIndicator;->startTrackAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$200(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$300(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$500(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v3

    sub-float v3, p1, v3

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v4}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$600(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$700(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$402(Lcom/android/launcher/pageindicators/OplusPageIndicator;F)F

    :cond_48
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$800(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$900(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1000(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1200(Lcom/android/launcher/pageindicators/OplusPageIndicator;FF)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1300(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$600(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$700(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v3

    add-int/2addr v3, v2

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_d1

    :cond_79
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$300(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$500(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v3

    sub-float v3, p1, v3

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v4}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$600(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$700(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    invoke-static {v0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$402(Lcom/android/launcher/pageindicators/OplusPageIndicator;F)F

    :cond_a2
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$800(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$900(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1000(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1200(Lcom/android/launcher/pageindicators/OplusPageIndicator;FF)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1300(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$600(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$700(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    :goto_d1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1402(Lcom/android/launcher/pageindicators/OplusPageIndicator;F)F

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
