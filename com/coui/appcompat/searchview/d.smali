.class public final synthetic Lcom/coui/appcompat/searchview/d;
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

    iput-object p1, p0, Lcom/coui/appcompat/searchview/d;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/searchview/d;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    if-nez v0, :cond_17

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar;->k0:F

    :cond_17
    return-void
.end method
