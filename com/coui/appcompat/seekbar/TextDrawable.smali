.class public Lcom/coui/appcompat/seekbar/TextDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/graphics/Paint;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_seekbar_popup_text_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_seekbar_popup_text_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_seekbar_popup_text_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$dimen;->coui_seekbar_popup_text_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->g:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->b:Landroid/graphics/Paint;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->b:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->b:Landroid/graphics/Paint;

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/TextDrawable;->a()Z

    move-result p1

    if-eqz p1, :cond_75

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_7c

    :cond_75
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_7c
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->f:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/TextDrawable;->a()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->c:Ljava/lang/String;

    iget v2, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->f:I

    int-to-float v3, v3

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3f

    :cond_30
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->c:Ljava/lang/String;

    iget v2, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->g:I

    rsub-int v2, v2, 0x90

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->f:I

    int-to-float v3, v3

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3f
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->d:I

    iget p0, p0, Lcom/coui/appcompat/seekbar/TextDrawable;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    const/16 p0, 0x90

    return p0
.end method
