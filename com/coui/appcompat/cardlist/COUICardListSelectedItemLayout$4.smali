.class Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;Landroid/animation/ValueAnimator;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$4;->b:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iput-object p2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$4;->a:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$4;->b:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iget-boolean p1, p1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->q:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$4;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$4;->b:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
