.class Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/indicator/COUIPageIndicator2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/view/View;)V
    .registers 3
    .param p1  # Lcom/coui/appcompat/indicator/COUIPageIndicator2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a(FF)I

    move-result p0

    return p0
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object v1, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    iget v1, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    if-ge v0, v1, :cond_13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 4
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p3, 0x10

    if-ne p2, p3, :cond_1e

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1e

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-boolean p3, p2, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->k:Z

    if-eqz p3, :cond_1e

    iget-object p2, p2, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->o:Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;

    if-eqz p2, :cond_1e

    invoke-interface {p2, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$OnIndicatorDotClickListener;->onClick(I)V

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 6
    .param p2  # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ltz p1, :cond_42

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$AccessibilityHelper;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    if-ge p1, v0, :cond_42

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_20

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_20

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    if-nez p0, :cond_24

    return-void

    :cond_24
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->g:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string p0, ""

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_42
    return-void
.end method
