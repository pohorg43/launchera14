.class public abstract Lcom/coui/appcompat/tips/COUICustomTopTips;
.super Lcom/coui/appcompat/cardview/COUICardView;
.source ""


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/animation/AnimatorSet;

.field public c:Landroid/animation/AnimatorSet;

.field public d:Landroid/animation/Animator$AnimatorListener;

.field public e:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/cardview/COUICardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->c()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->getContentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->setContentView(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->c(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/cardview/COUICardView;->setRadius(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/control/R$color;->coui_toptips_background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/cardview/COUICardView;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public getAnimatorSetDismiss()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->c:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public getAnimatorSetShow()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->b:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->a:Landroid/view/View;

    return-object p0
.end method

.method public abstract getContentViewId()I
.end method

.method public setAnimatorDismissListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->e:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setAnimatorSetDismiss(Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->c:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setAnimatorSetShow(Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->b:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setAnimatorShowListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setContentView(I)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tips/COUICustomTopTips;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->a:Landroid/view/View;

    if-nez v0, :cond_a

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Repeat calls are not allowed!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
