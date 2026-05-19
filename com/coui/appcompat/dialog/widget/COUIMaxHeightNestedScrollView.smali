.class public Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;
.super Lcom/coui/appcompat/scrollview/COUINestedScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;
    }
.end annotation


# instance fields
.field public Q:I

.field public R:I

.field public S:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p3, Lcom/support/appcompat/R$styleable;->COUIMaxHeightScrollView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIMaxHeightScrollView_scrollViewMaxHeight:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->Q:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIMaxHeightScrollView_scrollViewMinHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->R:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->S:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;->onChange()V

    :cond_a
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->R:I

    if-lez v0, :cond_f

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_f
    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->Q:I

    if-lez v0, :cond_17

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-eq p2, v0, :cond_2c

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->Q:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    :cond_2c
    return-void
.end method

.method public setConfigChangeListener(Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->S:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;

    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->Q:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInLayout()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$1;-><init>(Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    :cond_11
    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->requestLayout()V

    :goto_14
    return-void
.end method

.method public setMinHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->R:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->requestLayout()V

    return-void
.end method
