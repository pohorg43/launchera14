.class public Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""

# interfaces
.implements Lcom/coui/appcompat/tips/def/IDefaultTopTips;


# instance fields
.field public a:I

.field public b:Landroid/view/View$OnClickListener;

.field public c:Landroid/view/View$OnClickListener;

.field public d:Landroid/view/View$OnClickListener;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

.field public h:Z

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public final k:Landroidx/constraintlayout/widget/ConstraintSet;

.field public l:Lcom/coui/appcompat/tips/def/OnLinesChangedListener;

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->a:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->h:Z

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    const/4 p2, -0x1

    iput p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->m:I

    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->n:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/support/control/R$layout;->coui_default_toptips:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/support/control/R$id;->image:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->e:Landroid/widget/ImageView;

    sget p1, Lcom/support/control/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    sget p1, Lcom/support/control/R$id;->ignore:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->a(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    new-instance p2, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$1;-><init>(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/support/control/R$id;->action:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->a(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    new-instance p2, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$2;-><init>(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/support/control/R$id;->close:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->f:Landroid/widget/ImageView;

    new-instance p2, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$3;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$3;-><init>(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_11

    goto/16 :goto_c5

    :cond_11
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-ne v0, v1, :cond_1b

    goto/16 :goto_93

    :cond_1b
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    goto :goto_40

    :cond_3e
    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    :goto_40
    iget-object v4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_5b

    :cond_59
    move v4, v2

    goto :goto_5c

    :cond_5b
    :goto_5b
    move v4, v1

    :goto_5c
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-ne v5, v1, :cond_95

    iget-object v5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    if-eqz v4, :cond_7d

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_81

    :cond_7d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    :goto_81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/control/R$dimen;->coui_toptips_view_btn_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v3

    if-lt v4, v0, :cond_93

    goto :goto_c5

    :cond_93
    :goto_93
    move v1, v2

    goto :goto_c5

    :cond_95
    iget-object v5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    if-eqz v4, :cond_b0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    goto :goto_b4

    :cond_b0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    :goto_b4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/control/R$dimen;->coui_toptips_view_btn_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v0

    if-lt v4, v3, :cond_93

    :goto_c5
    const/4 v0, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eqz v1, :cond_170

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v5, Lcom/support/control/R$id;->title:I

    invoke-virtual {v1, v5, v0, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v6, -0x1

    if-eqz v1, :cond_f0

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f0

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v1, v5, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_f5

    :cond_f0
    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v1, v5, v4, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :goto_f5
    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/control/R$dimen;->coui_toptips_view_btn_margin_right:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v5, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v1, Lcom/support/control/R$id;->ignore:I

    invoke-virtual {v0, v1, v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/control/R$dimen;->coui_toptips_view_btn_top_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v0, v1, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/support/control/R$dimen;->coui_toptips_view_multi_btn_text_bottom_margin:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v0, v1, v4, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v1, Lcom/support/control/R$id;->action:I

    invoke-virtual {v0, v1, v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v1, Lcom/support/control/R$id;->image:I

    invoke-virtual {v0, v1, v4, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_1c3

    :cond_170
    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v5, Lcom/support/control/R$id;->title:I

    sget v6, Lcom/support/control/R$id;->ignore:I

    const/4 v7, 0x6

    invoke-virtual {v1, v5, v0, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v1, v5, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/control/R$dimen;->coui_toptips_view_btn_margin_right:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v5, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v6, v3, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v6, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v6, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v6, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v1, Lcom/support/control/R$id;->action:I

    invoke-virtual {v0, v1, v3, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v1, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v1, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v1, Lcom/support/control/R$id;->image:I

    invoke-virtual {v0, v1, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :goto_1c3
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->l:Lcom/coui/appcompat/tips/def/OnLinesChangedListener;

    if-eqz v0, :cond_1de

    iget v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->m:I

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-eq v0, v1, :cond_1de

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->m:I

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->l:Lcom/coui/appcompat/tips/def/OnLinesChangedListener;

    invoke-interface {v1, v0}, Lcom/coui/appcompat/tips/def/OnLinesChangedListener;->a(I)V

    :cond_1de
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v1, Lcom/support/control/R$id;->close:I

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v1, Lcom/support/control/R$id;->ignore:I

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1f9

    move v3, v4

    goto :goto_1fa

    :cond_1f9
    move v3, v2

    :goto_1fa
    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v1, Lcom/support/control/R$id;->action:I

    iget-object v3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20e

    move v2, v4

    :cond_20e
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final b(I)V
    .registers 10

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->a()V

    goto/16 :goto_86

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v1, Lcom/support/control/R$id;->title:I

    sget v2, Lcom/support/control/R$id;->close:I

    const/4 v3, 0x7

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/control/R$dimen;->coui_toptips_view_btn_margin_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v5, Lcom/support/control/R$id;->ignore:I

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v5, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v7, Lcom/support/control/R$id;->action:I

    invoke-virtual {v0, v7, v6, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v7, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_6b

    move v1, v2

    goto :goto_6c

    :cond_6b
    move v1, v3

    :goto_6c
    invoke-virtual {v0, v5, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    move v3, v2

    :cond_7e
    invoke-virtual {v0, v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->k:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_86
    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->a:I

    return-void
.end method

.method public final c(Landroid/widget/TextView;I)V
    .registers 6

    const/high16 p0, -0x80000000

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p2, v0, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-static {p0, v0, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method public final d(ILjava/lang/CharSequence;)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->b(I)V

    goto :goto_20

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setBtnTextImpl parameter \'which\' is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->b(I)V

    :goto_20
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_51

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getLeft()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p4

    iget-object p4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getBottom()I

    move-result p4

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/widget/TextView;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p4

    iget-object p4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getBottom()I

    move-result p4

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_97

    :cond_51
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getLeft()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    :goto_97
    iget p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->a:I

    if-nez p1, :cond_a5

    iget-boolean p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->h:Z

    if-eqz p1, :cond_a5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->h:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->a()V

    :cond_a5
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->e:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    add-int/2addr p1, v1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    shr-int/lit8 p2, v0, 0x1

    const/4 v1, 0x1

    if-gt p1, p2, :cond_38

    iget p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->n:I

    :cond_38
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    const/4 v2, 0x2

    if-gt p1, p2, :cond_46

    iget p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->n:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->n:I

    :cond_46
    iget p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->n:I

    if-eqz p1, :cond_69

    if-eq p1, v1, :cond_5c

    if-eq p1, v2, :cond_4f

    goto :goto_73

    :cond_4f
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->c(Landroid/widget/TextView;I)V

    goto :goto_73

    :cond_5c
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->c(Landroid/widget/TextView;I)V

    goto :goto_73

    :cond_69
    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->i:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->c(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->c(Landroid/widget/TextView;I)V

    :goto_73
    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->n:I

    return-void
.end method

.method public setCloseBtnListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCloseDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->b(I)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->d(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLinesChangedListener(Lcom/coui/appcompat/tips/def/OnLinesChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->l:Lcom/coui/appcompat/tips/def/OnLinesChangedListener;

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->d(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setStartIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTipsText(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->h:Z

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTipsTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->g:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setTextColor(I)V

    return-void
.end method
