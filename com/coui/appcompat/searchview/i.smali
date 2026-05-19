.class public final synthetic Lcom/coui/appcompat/searchview/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/WindowInsetsAnimationController;

.field public final synthetic b:Landroid/animation/ValueAnimator;

.field public final synthetic c:Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;

.field public final synthetic d:Landroid/view/animation/Interpolator;

.field public final synthetic e:Landroid/graphics/Insets;

.field public final synthetic f:Landroid/graphics/Insets;

.field public final synthetic g:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/WindowInsetsAnimationController;Landroid/animation/ValueAnimator;Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/i;->a:Landroid/view/WindowInsetsAnimationController;

    iput-object p2, p0, Lcom/coui/appcompat/searchview/i;->b:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/coui/appcompat/searchview/i;->c:Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;

    iput-object p4, p0, Lcom/coui/appcompat/searchview/i;->d:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lcom/coui/appcompat/searchview/i;->e:Landroid/graphics/Insets;

    iput-object p6, p0, Lcom/coui/appcompat/searchview/i;->f:Landroid/graphics/Insets;

    iput-object p7, p0, Lcom/coui/appcompat/searchview/i;->g:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/searchview/i;->a:Landroid/view/WindowInsetsAnimationController;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/i;->b:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/i;->c:Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/i;->d:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/coui/appcompat/searchview/i;->e:Landroid/graphics/Insets;

    iget-object v5, p0, Lcom/coui/appcompat/searchview/i;->f:Landroid/graphics/Insets;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/i;->g:Landroid/view/animation/Interpolator;

    sget-object v6, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->e:Landroid/view/animation/Interpolator;

    const-string v6, "$controller"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "this$0"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$insetsInterpolator"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$alphaInterpolator"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "animation"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isReady()Z

    move-result v6

    if-nez v6, :cond_33

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_55

    :cond_33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-boolean v1, v2, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->a:Z

    if-eqz v1, :cond_3d

    move v1, p1

    goto :goto_40

    :cond_3d
    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    :goto_40
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sget-object v3, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->f:Landroid/animation/TypeEvaluator;

    check-cast v3, Lcom/coui/appcompat/searchview/h;

    invoke-virtual {v3, v2, v4, v5}, Lcom/coui/appcompat/searchview/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Insets;

    invoke-interface {p0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    invoke-interface {v0, v2, p0, p1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    :goto_55
    return-void
.end method
