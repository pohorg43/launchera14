.class public Lcom/coui/appcompat/button/COUIButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source ""


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public final d:Landroid/graphics/Paint;

.field public e:I

.field public f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:I

.field public k:Landroid/graphics/Rect;

.field public l:Landroid/graphics/RectF;

.field public m:Landroid/graphics/RectF;

.field public n:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

.field public o:Z

.field public p:Lcom/coui/appcompat/button/listener/OnSizeChangeListener;

.field public q:Lcom/coui/appcompat/button/listener/OnTextChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/button/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroidx/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/button/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    const/high16 v2, 0x41a80000  # 21.0f

    iput v2, p0, Lcom/coui/appcompat/button/COUIButton;->g:F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->k:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->l:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->m:Landroid/graphics/RectF;

    if-eqz p2, :cond_2f

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_2f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIButton:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_animEnable:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_animType:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_couiRoundType:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->c:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_needVibrate:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/button/COUIButton;->o:Z

    iget-boolean p3, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    if-eqz p3, :cond_9a

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_brightness:I

    const v3, 0x3f4ccccd  # 0.8f

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_drawableRadius:I

    const/high16 v3, -0x40800000  # -1.0f

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->g:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_disabledColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->f:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_drawableColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->e:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_strokeColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->j:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_pressColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_closeLimitTextSize:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iget p3, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    if-ne p3, v1, :cond_9a

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9a
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_strokeWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_bordless_btn_stroke_width:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->h:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_button_radius_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->i:F

    if-nez v2, :cond_c1

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    :cond_c1
    iget p1, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    if-ne p1, v1, :cond_ce

    new-instance p1, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->n:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    goto :goto_d5

    :cond_ce
    new-instance p1, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-direct {p1, p0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->n:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    :goto_d5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->f:I

    return p0

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->n:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    iget v0, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:F

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->e:I

    invoke-static {v0, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method public final b(Landroid/graphics/RectF;)F
    .registers 4
    .param p1  # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->g:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr v0, p1

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->i:F

    sub-float/2addr v0, p0

    :cond_12
    return v0
.end method

.method public getDrawableRadius()F
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->k:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->g:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_16

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->i:F

    sub-float v1, v0, p0

    :cond_16
    return v1
.end method

.method public getRoundType()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->c:I

    return p0
.end method

.method public getSolidColor()I
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->a()I

    move-result p0

    return p0

    :cond_e
    invoke-super {p0}, Landroid/view/View;->getSolidColor()I

    move-result p0

    return p0
.end method

.method public getStrokeWidth()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->h:F

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    if-eqz v0, :cond_fb

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/Button;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    if-ne v1, v2, :cond_30

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_64

    :cond_30
    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->e:I

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_61

    :cond_3b
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/16 v5, 0xff

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, p0, Lcom/coui/appcompat/button/COUIButton;->n:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    iget v5, v5, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->l:F

    const/high16 v7, 0x437f0000  # 255.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-static {v5, v4, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    :goto_61
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_64
    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->c:I

    if-ne v1, v2, :cond_a9

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getDrawableRadius()F

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/button/COUIButton;->l:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    if-eq v1, v2, :cond_f8

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->m:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/button/COUIButton;->b(Landroid/graphics/RectF;)F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->i:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->h:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8e

    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->j:I

    goto :goto_90

    :cond_8e
    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->f:I

    :goto_90
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->h:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->m:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_f8

    :cond_a9
    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget-object v3, p0, Lcom/coui/appcompat/button/COUIButton;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getDrawableRadius()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    if-eq v1, v2, :cond_f8

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_cb

    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->j:I

    goto :goto_cd

    :cond_cb
    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->f:I

    :goto_cd
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->h:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->m:Landroid/graphics/RectF;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/button/COUIButton;->b(Landroid/graphics/RectF;)F

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/button/COUIButton;->i:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/button/COUIButton;->h:F

    sub-float/2addr v3, v4

    iget-object v1, v1, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v1, v2, v3}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_f8
    :goto_f8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_fb
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->l:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->m:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton;->k:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->h:F

    const/high16 p4, 0x40000000  # 2.0f

    div-float p5, p0, p4

    add-float/2addr p5, p3

    iput p5, p1, Landroid/graphics/RectF;->top:F

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    div-float p5, p0, p4

    add-float/2addr p5, p3

    iput p5, p1, Landroid/graphics/RectF;->left:F

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    div-float p5, p0, p4

    sub-float/2addr p3, p5

    iput p3, p1, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr p0, p4

    sub-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->p:Lcom/coui/appcompat/button/listener/OnSizeChangeListener;

    if-eqz v0, :cond_f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/coui/appcompat/button/listener/OnSizeChangeListener;->a(Landroid/view/View;IIII)V

    :cond_f
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->q:Lcom/coui/appcompat/button/listener/OnTextChangeListener;

    if-eqz v0, :cond_f

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/coui/appcompat/button/listener/OnTextChangeListener;->b(Landroid/view/View;Ljava/lang/CharSequence;III)V

    :cond_f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x12e

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    if-eq v0, v2, :cond_19

    const/4 v2, 0x3

    if-eq v0, v2, :cond_19

    goto :goto_33

    :cond_19
    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->o:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0, v1}, Landroid/widget/Button;->performHapticFeedback(I)Z

    :cond_20
    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->n:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b(Z)V

    goto :goto_33

    :cond_27
    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->o:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0, v1}, Landroid/widget/Button;->performHapticFeedback(I)Z

    :cond_2e
    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->n:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b(Z)V

    :cond_33
    :goto_33
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAnimEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    return-void
.end method

.method public setAnimType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    return-void
.end method

.method public setDisabledColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->f:I

    return-void
.end method

.method public setDrawableColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->e:I

    return-void
.end method

.method public setDrawableRadius(I)V
    .registers 2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->g:F

    return-void
.end method

.method public setIsNeedVibrate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUIButton;->o:Z

    return-void
.end method

.method public setMaxBrightness(I)V
    .registers 2

    return-void
.end method

.method public setOnSizeChangeListener(Lcom/coui/appcompat/button/listener/OnSizeChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->p:Lcom/coui/appcompat/button/listener/OnSizeChangeListener;

    return-void
.end method

.method public setOnTextChangeListener(Lcom/coui/appcompat/button/listener/OnTextChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->q:Lcom/coui/appcompat/button/listener/OnTextChangeListener;

    return-void
.end method

.method public setRoundType(I)V
    .registers 3

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_12

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid roundType"

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_12
    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->c:I

    if-eq v0, p1, :cond_1b

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->c:I

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    :cond_1b
    return-void
.end method

.method public setScaleEnable(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton;->n:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    if-eqz p0, :cond_6

    iput-boolean p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->r:Z

    :cond_6
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->j:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 2
    .param p1  # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->h:F

    return-void
.end method
