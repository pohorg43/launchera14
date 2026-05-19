.class public Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;
.super Landroid/view/View;
.source ""


# instance fields
.field public a:I

.field public b:[I

.field public c:I

.field public d:I

.field public e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

.field public final f:Landroid/graphics/Rect;

.field public final g:Landroid/graphics/Rect;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public j:Lcom/coui/component/responsiveui/ResponsiveUIModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    iput v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    iput v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    iput-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->h:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    iput p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    iput p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    sget-object p2, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    iput-object p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->g:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->h:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    iput p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    iput p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    sget-object p2, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    iput-object p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->g:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->h:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->j:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b()V

    iget-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->h:Landroid/graphics/Paint;

    sget v1, Lcom/support/appcompat/R$color;->responsive_ui_column_hint_margin:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->i:Landroid/graphics/Paint;

    sget v0, Lcom/support/appcompat/R$color;->responsive_ui_column_hint_column:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final b()V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    iget-object v1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->j:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v1, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->j:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    iget-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->j:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnWidth()[I

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    iget-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->j:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    iget-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->j:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    iget-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2c
    const-string v4, "COUIResponsiveGridMaskView"

    if-ge v2, v1, :cond_4a

    aget v5, v0, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestLatestGridParams: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_4a
    const-string v0, "requestLatestGridParams: \ngetMeasureWidth() = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmMargin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmGutter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmColumnWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmColumnCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    const-string v2, "\nsum(columnWidth) = "

    const-string v5, "\ntotal = (mMargin * 2) + (mColumnWidth * mColumnCount) + (mGutter * (mColumnCount - 1)) = "

    invoke-static {v0, v1, v2, v3, v5}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    iget v2, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    iget p0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr p0, v2

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const-string v1, "onDraw: right margin:"

    const-string v2, " - "

    const-string v3, "COUIResponsiveGridMaskView"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_11a

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const-string v6, "onDraw: total"

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    iget v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    float-to-int v7, v7

    sub-int v7, v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v6, v0, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    int-to-float v1, v1

    add-float/2addr v1, v5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    int-to-float v1, v1

    add-float/2addr v1, v5

    move v5, v4

    :goto_61
    iget v6, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    if-ge v5, v6, :cond_e1

    iget-object v6, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->g:Landroid/graphics/Rect;

    float-to-int v7, v1

    sub-int v7, v0, v7

    iget-object v8, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v8, v8, v5

    int-to-float v8, v8

    add-float/2addr v8, v1

    float-to-int v8, v8

    sub-int v8, v0, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->g:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDraw: column:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v7, v7, v5

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_cd

    const-string v6, "onDraw: gap:"

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v7, v7, v5

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v7, v7, v5

    int-to-float v7, v7

    add-float/2addr v7, v1

    iget v8, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    iget-object v6, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v6, v6, v5

    iget v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    add-int/lit8 v7, v7, -0x1

    if-ne v5, v7, :cond_d9

    move v7, v4

    goto :goto_db

    :cond_d9
    iget v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    :goto_db
    add-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    :cond_e1
    iget-object v5, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    float-to-int v6, v1

    sub-int v6, v0, v6

    iget v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    float-to-int v7, v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v4, v0, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDraw: left margin:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    int-to-float p0, p0

    add-float/2addr p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_227

    :cond_11a
    const-string v0, "onDraw: total width: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    iget v6, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0, v4, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDraw: left margin: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " width: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    invoke-static {v0, v7, v3}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    move v5, v4

    :goto_169
    iget v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    if-ge v5, v7, :cond_1f2

    iget-object v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->g:Landroid/graphics/Rect;

    float-to-int v8, v0

    iget-object v9, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v9, v9, v5

    int-to-float v9, v9

    add-float/2addr v9, v0

    float-to-int v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v7, v8, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->g:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDraw: column "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v9, v9, v5

    int-to-float v9, v9

    add-float/2addr v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v9, v9, v5

    invoke-static {v7, v9, v3}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    add-int/lit8 v7, v7, -0x1

    if-eq v5, v7, :cond_1dd

    const-string v7, "onDraw: gap "

    invoke-static {v7, v5, v8}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v8, v8, v5

    int-to-float v8, v8

    add-float/2addr v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v8, v8, v5

    int-to-float v8, v8

    add-float/2addr v8, v0

    iget v9, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    invoke-static {v7, v8, v3}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1dd
    iget-object v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b:[I

    aget v7, v7, v5

    iget v8, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->a:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1e9

    move v8, v4

    goto :goto_1eb

    :cond_1e9
    iget v8, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->c:I

    :goto_1eb
    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v0, v7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_169

    :cond_1f2
    iget-object v5, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    float-to-int v6, v0

    iget v7, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->f:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " width:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->d:I

    invoke-static {p1, p0, v3}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_227
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->j:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->rebuild(II)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->b()V

    return-void
.end method

.method public setMarginType(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    return-void
.end method
