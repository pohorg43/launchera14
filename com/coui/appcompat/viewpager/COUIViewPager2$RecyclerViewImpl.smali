.class Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;
.super Landroidx/recyclerview/widget/COUIRecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewImpl"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Landroid/content/Context;)V
    .registers 3
    .param p1  # Lcom/coui/appcompat/viewpager/COUIViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setDispatchEventWhileOverScrolling(Z)V

    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setDispatchEventWhileScrollingThreshold(I)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2$BasicAccessibilityProvider;

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->l()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1  # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->m(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-boolean v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-boolean v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
