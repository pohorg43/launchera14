.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    const/high16 v1, -0x40800000  # -1.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->h:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;

    if-eqz p0, :cond_30

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-interface {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;->c(I)V

    :cond_30
    return-void
.end method
