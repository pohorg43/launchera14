.class public final synthetic Lcom/coui/appcompat/searchview/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/searchview/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/searchview/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/searchview/c;->a:I

    packed-switch v0, :pswitch_data_62

    goto :goto_2e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-nez v0, :cond_23

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2d

    :cond_23
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l0:F

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2d
    :goto_2d
    return-void

    :goto_2e
    iget-object p0, p0, Lcom/coui/appcompat/searchview/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    sget-object v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->v0:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-nez v0, :cond_61

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->N:I

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->O:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->H:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->H:I

    :cond_61
    return-void

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
