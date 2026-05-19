.class Lcom/android/launcher/pageindicators/OplusPageIndicator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1500(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$300(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$600(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$700(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1600(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget v3, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$800(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_39

    :cond_33
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$800(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v3

    :goto_39
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$200(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    add-int/lit8 v4, p1, -0x2

    sub-int/2addr v3, v4

    neg-int v3, v3

    mul-int/2addr v3, v2

    int-to-float v3, v3

    invoke-static {v0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$402(Lcom/android/launcher/pageindicators/OplusPageIndicator;F)F

    goto :goto_57

    :cond_4d
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    mul-int/2addr v3, v2

    int-to-float v3, v3

    invoke-static {v0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$402(Lcom/android/launcher/pageindicators/OplusPageIndicator;F)F

    :goto_57
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$400(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget v4, v4, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v4, p1

    neg-int p1, v4

    mul-int/2addr p1, v2

    int-to-float p1, p1

    invoke-static {v3, p1, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$402(Lcom/android/launcher/pageindicators/OplusPageIndicator;F)F

    :cond_6c
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$800(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$900(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p1, v1, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1200(Lcom/android/launcher/pageindicators/OplusPageIndicator;FF)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1700(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1000(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1700(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$1402(Lcom/android/launcher/pageindicators/OplusPageIndicator;F)F

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
