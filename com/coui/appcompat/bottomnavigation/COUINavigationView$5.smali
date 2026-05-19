.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object v0, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method
