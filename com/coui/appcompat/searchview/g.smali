.class public final synthetic Lcom/coui/appcompat/searchview/g;
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

    iput-object p1, p0, Lcom/coui/appcompat/searchview/g;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/searchview/g;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_1e

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    sub-float/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_29

    :cond_1e
    const/4 v2, 0x1

    if-ne v0, v2, :cond_29

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->l0:F

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_29
    :goto_29
    return-void
.end method
