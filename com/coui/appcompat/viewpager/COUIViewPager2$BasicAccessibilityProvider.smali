.class Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;
.super Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BasicAccessibilityProvider"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# virtual methods
.method public a(I)Z
    .registers 3

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_10

    :cond_8
    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-boolean p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public h(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2
    .param p1  # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-boolean p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    if-nez p0, :cond_14

    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_14
    return-void
.end method

.method public i(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;->a(I)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public l()Ljava/lang/CharSequence;
    .registers 1

    const-string p0, "androidx.viewpager.widget.ViewPager"

    return-object p0
.end method
