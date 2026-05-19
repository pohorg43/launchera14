.class public Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;
.super Lcom/coui/appcompat/scrollview/COUIScrollView;
.source ""


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p3, Lcom/support/appcompat/R$styleable;->COUIMaxHeightScrollView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIMaxHeightScrollView_scrollViewMaxHeight:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->a:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIMaxHeightScrollView_scrollViewMinHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->a:I

    return p0
.end method

.method public getMinHeight()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->b:I

    return p0
.end method

.method public onMeasure(II)V
    .registers 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->a:I

    if-lez v1, :cond_12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_12
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->b:I

    if-ge p2, v0, :cond_26

    const/high16 p2, 0x40000000  # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onMeasure(II)V

    :cond_26
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->a:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->b:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->requestLayout()V

    return-void
.end method
