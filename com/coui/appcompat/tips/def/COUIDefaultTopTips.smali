.class public Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;
.super Lcom/coui/appcompat/tips/COUICustomTopTips;
.source ""

# interfaces
.implements Lcom/coui/appcompat/tips/def/IDefaultTopTips;


# instance fields
.field public f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/tips/COUICustomTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->d()Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->c(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/cardview/COUICardView;->setRadius(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_color_bottom_bar:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/cardview/COUICardView;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public d()Lcom/coui/appcompat/tips/def/IDefaultTopTips;
    .registers 5

    new-instance v0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips$1;-><init>(Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->setOnLinesChangedListener(Lcom/coui/appcompat/tips/def/OnLinesChangedListener;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->setContentView(Landroid/view/View;)V

    return-object v0
.end method

.method public getContentViewId()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setCloseBtnListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tips/def/IDefaultTopTips;->setCloseBtnListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCloseDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tips/def/IDefaultTopTips;->setCloseDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tips/def/IDefaultTopTips;->setNegativeButton(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tips/def/IDefaultTopTips;->setNegativeButtonListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tips/def/IDefaultTopTips;->setPositiveButton(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tips/def/IDefaultTopTips;->setPositiveButtonListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setStartIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tips/def/IDefaultTopTips;->setStartIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTipsText(Ljava/lang/CharSequence;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tips/def/IDefaultTopTips;->setTipsText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTipsTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->f:Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tips/def/IDefaultTopTips;->setTipsTextColor(I)V

    return-void
.end method
