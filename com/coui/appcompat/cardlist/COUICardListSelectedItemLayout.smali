.class public Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;
.super Lcom/coui/appcompat/preference/ListSelectedItemLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$ConfigurationChangedListener;,
        Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$AnimatorHelper;
    }
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public i:F

.field public j:I

.field public k:Landroid/graphics/Path;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$ConfigurationChangedListener;

.field public t:I

.field public u:I

.field public final v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->l:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->m:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->r:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/list/R$dimen;->coui_list_card_head_or_tail_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->v:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    sget-object v1, Lcom/support/list/R$styleable;->COUICardListSelectedItemLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/list/R$styleable;->COUICardListSelectedItemLayout_listIsTiny:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    sget v0, Lcom/support/list/R$styleable;->COUICardListSelectedItemLayout_couiCardRadius:I

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->i:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p3, :cond_4d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/list/R$dimen;->coui_preference_card_margin_horizontal:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->j:I

    goto :goto_59

    :cond_4d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/list/R$dimen;->coui_preference_card_margin_horizontal_tiny:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->j:I

    :goto_59
    sget p3, Lcom/support/appcompat/R$attr;->couiColorCardBackground:I

    invoke-static {p1, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->n:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->o:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->p:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->k:Landroid/graphics/Path;

    sget p1, Lcom/support/list/R$styleable;->COUICardListSelectedItemLayout_couiCardListHorizontalMargin:I

    iget p3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->j:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->j:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setCardRadiusStyle(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_9

    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->l:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->m:Z

    goto :goto_1d

    :cond_9
    const/4 v1, 0x0

    if-ne p1, v0, :cond_11

    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->l:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->m:Z

    goto :goto_1d

    :cond_11
    const/4 v2, 0x3

    if-ne p1, v2, :cond_19

    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->l:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->m:Z

    goto :goto_1d

    :cond_19
    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->l:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->m:Z

    :goto_1d
    return-void
.end method

.method private setPadding(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    iget p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->v:I

    move v4, v0

    move v0, p1

    move p1, v4

    goto :goto_16

    :cond_a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_10

    iget p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->v:I

    goto :goto_16

    :cond_10
    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    iget v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->v:I

    :cond_15
    move p1, v0

    :goto_16
    iget v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->n:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->o:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v0

    iget v3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->p:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 10

    sget v0, Lcom/support/appcompat/R$attr;->couiColorCardBackground:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->t:I

    sget v0, Lcom/support/appcompat/R$attr;->couiColorCardPressed:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->u:I

    iget-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->q:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1d

    :cond_18
    iget p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->t:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_1d
    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    iput-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    :cond_2f
    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    iput-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    :cond_40
    iget p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->t:I

    iget v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->u:I

    const-wide/16 v1, 0x96

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 p1, 0x1

    aput v0, v4, p1

    const-string v0, "backgroundColor"

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$3;-><init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v4, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->u:I

    iget v2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->t:I

    const-wide/16 v6, 0x16f

    new-array v3, v3, [I

    aput v1, v3, v5

    aput v2, v3, p1

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$4;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$4;-><init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$5;-><init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->q:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b()V

    :cond_7
    return-void
.end method

.method public c()V
    .registers 1

    invoke-super {p0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->c()V

    return-void
.end method

.method public final d()V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    new-instance v2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->j:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->j:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->k:Landroid/graphics/Path;

    iget v3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->i:F

    iget-boolean v5, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->l:Z

    iget-boolean v7, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->m:Z

    move-object v1, v0

    move v4, v5

    move v6, v7

    invoke-static/range {v1 .. v7}, Lcom/coui/appcompat/roundRect/COUIShapePath;->b(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    iput-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->k:Landroid/graphics/Path;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->r:Z

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1c

    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1c
    return-void
.end method

.method public getIsSelected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->q:Z

    return p0
.end method

.method public getMarginHorizontal()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->j:I

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->s:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$ConfigurationChangedListener;

    if-eqz p0, :cond_a

    invoke-interface {p0, p1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$ConfigurationChangedListener;->a(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->d()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_18

    new-instance p1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;-><init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    :cond_18
    return-void
.end method

.method public setConfigurationChangeListener(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$ConfigurationChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->s:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$ConfigurationChangedListener;

    return-void
.end method

.method public setIsSelected(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->q:Z

    if-eq v0, p1, :cond_1d

    iput-boolean p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->q:Z

    if-nez p1, :cond_e

    iget p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->t:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1d

    :cond_e
    iget-object p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->a:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1d

    :cond_18
    iget p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->u:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setMarginHorizontal(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->j:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setPositionInGroup(I)V
    .registers 2

    if-lez p1, :cond_b

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setPadding(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setCardRadiusStyle(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->d()V

    :cond_b
    return-void
.end method
