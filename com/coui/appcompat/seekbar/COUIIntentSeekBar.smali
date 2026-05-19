.class public Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;
.super Lcom/coui/appcompat/seekbar/COUISeekBar;
.source ""


# instance fields
.field public P0:I

.field public Q0:I

.field public R0:F

.field public S0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/control/R$attr;->couiIntentSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/support/control/R$style;->COUIIntentSeekBar_Dark:I

    goto :goto_b

    :cond_9
    sget v0, Lcom/support/control/R$style;->COUIIntentSeekBar:I

    :goto_b
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->P0:I

    sget-object v2, Lcom/support/control/R$styleable;->COUIIntentSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/control/R$styleable;->COUIIntentSeekBar_couiSeekBarSecondaryProgressColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    sget p3, Lcom/support/control/R$styleable;->COUIIntentSeekBar_couiSeekBarIsFollowThumb:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->S0:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/support/control/R$color;->coui_seekbar_progress_color_normal:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p0, p2, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->Q0:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/control/R$dimen;->coui_seekbar_intent_thumb_out_shade_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->R0:F

    return-void
.end method


# virtual methods
.method public e(Landroid/graphics/Canvas;F)V
    .registers 14

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    int-to-float v1, v1

    div-float/2addr v3, v1

    sub-float v3, v2, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->P0:I

    sub-int/2addr v5, v4

    int-to-float v4, v5

    invoke-static {v4, p2, v1, v2}, Landroidx/constraintlayout/core/motion/b;->a(FFFF)F

    move-result v1

    move v4, v3

    move v3, v2

    goto :goto_57

    :cond_39
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr v3, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, p2

    int-to-float v1, v1

    div-float/2addr v2, v1

    add-float/2addr v2, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->P0:I

    sub-int/2addr v5, v4

    int-to-float v4, v5

    invoke-static {v4, p2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result v1

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v4

    :goto_57
    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->Q0:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    sub-float/2addr v1, v5

    add-float/2addr v2, v5

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v7, v0, v5

    add-float/2addr v5, v0

    invoke-virtual {v6, v1, v7, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->S0:Z

    if-eqz v1, :cond_7c

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->e(Landroid/graphics/Canvas;F)V

    goto :goto_98

    :cond_7c
    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    sub-float/2addr v4, v1

    sub-float v2, v0, v1

    add-float/2addr v3, v1

    add-float/2addr v0, v1

    invoke-virtual {p2, v4, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->V:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->A:F

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_98
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr v1, v2

    add-float/2addr v1, p2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    goto :goto_c1

    :cond_b5
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    :goto_c1
    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:F

    sub-float v10, v1, p2

    add-float/2addr v1, p2

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Z

    if-eqz p2, :cond_ee

    iget-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->S0:Z

    if-nez p2, :cond_ee

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->R0:F

    sub-float v3, v10, p2

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:F

    sub-float v4, v0, v2

    sub-float/2addr v4, p2

    add-float v5, v1, p2

    add-float/2addr v0, v2

    add-float v6, v0, p2

    add-float v8, v2, p2

    iget-object v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_fe

    :cond_ee
    int-to-float p2, v0

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:F

    sub-float v4, p2, v8

    add-float v6, p2, v8

    iget-object v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v10

    move v5, v1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_fe
    const/high16 p1, 0x40000000  # 2.0f

    invoke-static {v1, v10, p1, v10}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e0:F

    return-void
.end method

.method public getSecondaryProgress()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->P0:I

    return p0
.end method

.method public n()V
    .registers 2

    invoke-super {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    return-void
.end method

.method public setFollowThumb(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->S0:Z

    return-void
.end method

.method public setSecondaryProgress(I)V
    .registers 4

    if-ltz p1, :cond_13

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->P0:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_13
    return-void
.end method

.method public setSecondaryProgressColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/control/R$color;->coui_seekbar_secondary_progress_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->Q0:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_15
    return-void
.end method
