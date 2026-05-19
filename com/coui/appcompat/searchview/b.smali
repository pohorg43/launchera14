.class public final synthetic Lcom/coui/appcompat/searchview/b;
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

    iput v0, p0, Lcom/coui/appcompat/searchview/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/searchview/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/searchview/b;->a:I

    packed-switch v0, :pswitch_data_44

    goto :goto_3c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget v1, v0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-nez v1, :cond_3b

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->c:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->a:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->a:I

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_3b
    return-void

    :goto_3c
    iget-object p0, p0, Lcom/coui/appcompat/searchview/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
