.class public final synthetic Lcom/coui/appcompat/searchview/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/f;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/searchview/f;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget v1, v0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-nez v1, :cond_33

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

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->a:I

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_33
    return-void
.end method
