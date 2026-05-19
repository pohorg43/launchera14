.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->f(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/animation/ObjectAnimator;

.field public final synthetic c:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final synthetic d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

.field public final synthetic e:I

.field public final synthetic f:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;ILandroid/animation/ObjectAnimator;Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;I)V
    .registers 7

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->f:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iput p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->a:I

    iput-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->b:Landroid/animation/ObjectAnimator;

    iput-object p4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iput p6, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->f:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->a:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->f:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-object v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->b:Z

    iget-object v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->z:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V

    :cond_16
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->f:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s(I)Z

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->f:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->m(F)I

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->k:I

    invoke-static {p1, p0}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->f:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->a:I

    sget-object v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->D:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->j(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_15

    move p1, v1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->f:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-object v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iput-boolean v1, v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->b:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V

    :cond_22
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->e:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->f:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s(I)Z

    return-void
.end method
