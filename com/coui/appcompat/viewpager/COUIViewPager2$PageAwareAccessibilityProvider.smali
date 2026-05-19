.class Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;
.super Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageAwareAccessibilityProvider"
.end annotation


# instance fields
.field public final a:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field public final b:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field public c:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public final synthetic d:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Lcom/coui/appcompat/viewpager/COUIViewPager2$1;)V

    new-instance p1, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$1;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;)V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->a:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    new-instance p1, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$2;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;)V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->b:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    return-void
.end method


# virtual methods
.method public b(ILandroid/os/Bundle;)Z
    .registers 3

    const/16 p0, 0x2000

    if-eq p1, p0, :cond_b

    const/16 p0, 0x1000

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 2
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->s()V

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->c:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_a
    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 2
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->c:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_7
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 1

    const-string p0, "androidx.viewpager.widget.ViewPager"

    return-object p0
.end method

.method public f(Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1  # Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x2

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    new-instance p1, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$3;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$3;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;)V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->c:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_19

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_19
    return-void
.end method

.method public g(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    move v3, v1

    goto :goto_2d

    :cond_1e
    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    move v3, v0

    move v0, v1

    goto :goto_2d

    :cond_2b
    move v0, v1

    move v3, v0

    :goto_2d
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    invoke-static {v0, v3, v1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_41

    goto :goto_66

    :cond_41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_66

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-boolean v3, v1, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    if-nez v3, :cond_4e

    goto :goto_66

    :cond_4e
    iget v1, v1, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    if-lez v1, :cond_57

    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_57
    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    sub-int/2addr v0, v2

    if-ge p0, v0, :cond_63

    const/16 p0, 0x1000

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_63
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_66
    :goto_66
    return-void
.end method

.method public j(ILandroid/os/Bundle;)Z
    .registers 5

    const/16 p2, 0x2000

    const/4 v0, 0x1

    if-eq p1, p2, :cond_c

    const/16 v1, 0x1000

    if-ne p1, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    move v1, v0

    :goto_d
    if-eqz v1, :cond_24

    if-ne p1, p2, :cond_19

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result p1

    sub-int/2addr p1, v0

    goto :goto_20

    :cond_19
    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v0

    :goto_20
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->r(I)V

    return v0

    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public k()V
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->s()V

    return-void
.end method

.method public m(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1  # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    const-string p0, "androidx.viewpager.widget.ViewPager"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public n()V
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->s()V

    return-void
.end method

.method public o()V
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->s()V

    return-void
.end method

.method public p()V
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->s()V

    return-void
.end method

.method public q()V
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->s()V

    return-void
.end method

.method public r(I)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->f(IZ)V

    :cond_a
    return-void
.end method

.method public s()V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    const v1, 0x1020048

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    const v2, 0x1020049

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    const v3, 0x1020046

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    const v4, 0x1020047

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v5}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    if-nez v5, :cond_23

    return-void

    :cond_23
    iget-object v5, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v5}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-nez v5, :cond_30

    return-void

    :cond_30
    iget-object v6, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-boolean v7, v6, Lcom/coui/appcompat/viewpager/COUIViewPager2;->r:Z

    if-nez v7, :cond_37

    return-void

    :cond_37
    invoke-virtual {v6}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getOrientation()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6f

    iget-object v3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v3}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->c()Z

    move-result v3

    if-eqz v3, :cond_48

    move v4, v1

    goto :goto_49

    :cond_48
    move v4, v2

    :goto_49
    if-eqz v3, :cond_4c

    move v1, v2

    :cond_4c
    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v2, v2, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_5e

    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v2, v4, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->a:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v2, v7, v3}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_5e
    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v2, v2, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    if-lez v2, :cond_91

    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v2, v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->b:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v2, v7, p0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    goto :goto_91

    :cond_6f
    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v1, v1, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_81

    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v1, v4, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->a:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v1, v7, v2}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_81
    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v1, v1, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    if-lez v1, :cond_91

    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v1, v3, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->b:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v1, v7, p0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_91
    :goto_91
    return-void
.end method
