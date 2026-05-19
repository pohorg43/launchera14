.class public Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUICodeInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeItemView"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/text/TextPaint;

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Path;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_code_input_cell_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerS:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_code_input_cell_stroke_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_code_input_cell_security_circle_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$color;->coui_code_input_security_circle_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->e:I

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->f:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->g:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->h:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->i:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->j:Landroid/graphics/Path;

    const-string p1, ""

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->f:Landroid/text/TextPaint;

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->a:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->f:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->f:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorCardBackground:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->c:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->e:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)F
    .registers 3

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->f:Landroid/text/TextPaint;

    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p0, p2

    sub-float/2addr p1, p0

    return p1
.end method

.method public final b(I)F
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->f:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p0, p1

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->j:Landroid/graphics/Path;

    iget v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->b:I

    int-to-float v4, v4

    invoke-static {v3, v2, v4}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iput-object v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->j:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->l:Z

    const/high16 v3, 0x437f0000  # 255.0f

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    iget-boolean v2, v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->j:Z

    if-eqz v2, :cond_55

    :cond_2b
    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->c:I

    shr-int/lit8 v2, v2, 0x1

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    sub-int v6, v0, v2

    int-to-float v6, v6

    sub-int v2, v1, v2

    int-to-float v2, v2

    invoke-direct {v4, v5, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    iget v2, v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->h:F

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->h:Landroid/graphics/Paint;

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->j:Landroid/graphics/Path;

    iget v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->b:I

    int-to-float v5, v5

    invoke-static {v2, v4, v5}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->j:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_55
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    iget-boolean v2, v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->i:Z

    if-eqz v2, :cond_c5

    :cond_63
    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->m:Z

    if-eqz v2, :cond_76

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->d:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_c5

    :cond_76
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    iget-boolean v4, v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->i:Z

    if-eqz v4, :cond_ad

    iget v2, v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->f:F

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->f:Landroid/text/TextPaint;

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    iget-boolean v3, v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->k:Z

    if-eqz v3, :cond_9d

    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->a(ILjava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->b(I)F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    iget v2, v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->g:F

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_a7

    :cond_9d
    iget-object v4, v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->a(ILjava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->b(I)F

    move-result v1

    :goto_a7
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->f:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_c5

    :cond_ad
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->a(ILjava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->b(I)F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->f:Landroid/text/TextPaint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->k:Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->f:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public setEnableSecurity(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->m:Z

    return-void
.end method

.method public setIsSelected(Z)V
    .registers 8

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->l:Z

    if-eq p1, v0, :cond_85

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    iget-boolean v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->j:Z

    if-eqz v1, :cond_13

    iget-object v2, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->b:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_13
    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_2a

    iget v3, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->h:F

    cmpl-float v4, v3, v2

    if-lez v4, :cond_25

    cmpg-float v4, v3, v1

    if-gez v4, :cond_25

    iput v3, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    goto :goto_27

    :cond_25
    iput v2, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    :goto_27
    iput v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->e:F

    goto :goto_3b

    :cond_2a
    iget v3, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->h:F

    cmpl-float v4, v3, v2

    if-lez v4, :cond_37

    cmpg-float v4, v3, v1

    if-gez v4, :cond_37

    iput v3, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    goto :goto_39

    :cond_37
    iput v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    :goto_39
    iput v2, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->e:F

    :goto_3b
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    aput v3, v1, v2

    iget v2, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->e:F

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5a

    const-wide/16 v4, 0x21

    goto :goto_5c

    :cond_5a
    const-wide/16 v4, 0x0

    :goto_5c
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->b:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper$3;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper$3;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/edittext/COUICodeInputHelper$4;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper$4;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v3, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->j:Z

    iget v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->d:F

    iput v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->h:F

    :cond_85
    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->l:Z

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->m:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->a(ZLjava/lang/String;)V

    goto :goto_2f

    :cond_1b
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->n:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->a(ZLjava/lang/String;)V

    :cond_2f
    :goto_2f
    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->k:Ljava/lang/String;

    return-void
.end method
