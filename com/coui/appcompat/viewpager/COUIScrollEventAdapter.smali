.class public Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;
    }
.end annotation


# instance fields
.field public a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public final b:Lcom/coui/appcompat/viewpager/COUIViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Landroidx/recyclerview/widget/LinearLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .registers 2
    .param p1  # Lcom/coui/appcompat/viewpager/COUIViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->b:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p1, p1, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance p1, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    invoke-direct {p1}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->resetState()V

    return-void
.end method


# virtual methods
.method public final dispatchSelected(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_7
    return-void
.end method

.method public final dispatchStateChanged(I)V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->f:I

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->f:I

    if-ne v0, p1, :cond_f

    return-void

    :cond_f
    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->f:I

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_18
    return-void
.end method

.method public isIdle()Z
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->f:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 9
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->e:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    iget v2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->f:I

    if-eq v2, v1, :cond_10

    :cond_a
    if-ne p2, v1, :cond_10

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->startDrag(Z)V

    return-void

    :cond_10
    const/4 v2, 0x4

    if-eq p1, v1, :cond_18

    if-ne p1, v2, :cond_16

    goto :goto_18

    :cond_16
    move v3, v0

    goto :goto_19

    :cond_18
    :goto_18
    move v3, v1

    :goto_19
    const/4 v4, 0x2

    if-eqz v3, :cond_28

    if-ne p2, v4, :cond_28

    iget-boolean p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->k:Z

    if-eqz p1, :cond_27

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->dispatchStateChanged(I)V

    iput-boolean v1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->j:Z

    :cond_27
    return-void

    :cond_28
    if-eq p1, v1, :cond_2f

    if-ne p1, v2, :cond_2d

    goto :goto_2f

    :cond_2d
    move p1, v0

    goto :goto_30

    :cond_2f
    :goto_2f
    move p1, v1

    :goto_30
    const/4 v2, -0x1

    if-eqz p1, :cond_64

    if-nez p2, :cond_64

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->updateScrollEventValues()V

    iget-boolean p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->k:Z

    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget p1, p1, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    if-eq p1, v2, :cond_5c

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v5, :cond_5c

    invoke-virtual {v5, p1, v3, v0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    goto :goto_5c

    :cond_4b
    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget v3, p1, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->c:I

    if-nez v3, :cond_5b

    iget v3, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->h:I

    iget p1, p1, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    if-eq v3, p1, :cond_5c

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->dispatchSelected(I)V

    goto :goto_5c

    :cond_5b
    move v1, v0

    :cond_5c
    :goto_5c
    if-eqz v1, :cond_64

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->dispatchStateChanged(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->resetState()V

    :cond_64
    iget p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->e:I

    if-ne p1, v4, :cond_89

    if-nez p2, :cond_89

    iget-boolean p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->l:Z

    if-eqz p1, :cond_89

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->updateScrollEventValues()V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget p2, p1, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->c:I

    if-nez p2, :cond_89

    iget p2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->i:I

    iget p1, p1, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    if-eq p2, p1, :cond_83

    if-ne p1, v2, :cond_80

    move p1, v0

    :cond_80
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->dispatchSelected(I)V

    :cond_83
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->dispatchStateChanged(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->resetState()V

    :cond_89
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 8
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->k:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->updateScrollEventValues()V

    iget-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->j:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    iput-boolean v2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->j:Z

    if-gtz p3, :cond_22

    if-nez p3, :cond_20

    if-gez p2, :cond_16

    move p2, p1

    goto :goto_17

    :cond_16
    move p2, v2

    :goto_17
    iget-object p3, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->b:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p3}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->c()Z

    move-result p3

    if-ne p2, p3, :cond_20

    goto :goto_22

    :cond_20
    move p2, v2

    goto :goto_23

    :cond_22
    :goto_22
    move p2, p1

    :goto_23
    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget p3, p2, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->c:I

    if-eqz p3, :cond_2f

    iget p2, p2, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    add-int/2addr p2, p1

    goto :goto_33

    :cond_2f
    iget-object p2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    :goto_33
    iput p2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->i:I

    iget p3, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->h:I

    if-eq p3, p2, :cond_4b

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->dispatchSelected(I)V

    goto :goto_4b

    :cond_3d
    iget p2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->e:I

    if-nez p2, :cond_4b

    iget-object p2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    if-ne p2, v1, :cond_48

    move p2, v2

    :cond_48
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->dispatchSelected(I)V

    :cond_4b
    :goto_4b
    iget-object p2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget p3, p2, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    if-ne p3, v1, :cond_52

    move p3, v2

    :cond_52
    iget v0, p2, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->b:F

    iget p2, p2, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->c:I

    iget-object v3, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v3, :cond_5d

    invoke-virtual {v3, p3, v0, p2}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    :cond_5d
    iget-object p2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget p3, p2, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->i:I

    if-eq p3, v0, :cond_67

    if-ne v0, v1, :cond_75

    :cond_67
    iget p2, p2, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->c:I

    if-nez p2, :cond_75

    iget p2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->f:I

    if-eq p2, p1, :cond_75

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->dispatchStateChanged(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->resetState()V

    :cond_75
    return-void
.end method

.method public final resetState()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->e:I

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->f:I

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    invoke-virtual {v1}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->h:I

    iput v1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->i:I

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->j:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->k:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->m:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->l:Z

    return-void
.end method

.method public final startDrag(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->m:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    goto :goto_8

    :cond_7
    move p1, v0

    :goto_8
    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->e:I

    iget p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->i:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_14

    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->h:I

    iput v1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->i:I

    goto :goto_20

    :cond_14
    iget p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->h:I

    if-ne p1, v1, :cond_20

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->h:I

    :cond_20
    :goto_20
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->dispatchStateChanged(I)V

    return-void
.end method

.method public final updateScrollEventValues()V
    .registers 13

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->g:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a()V

    return-void

    :cond_11
    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a()V

    return-void

    :cond_1d
    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_4b

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v7

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v7

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v7

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    :cond_4b
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    iget-object v3, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_63

    move v3, v8

    goto :goto_64

    :cond_63
    move v3, v7

    :goto_64
    if-eqz v3, :cond_7d

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->b:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v2}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->c()Z

    move-result v2

    if-eqz v2, :cond_7b

    neg-int v1, v1

    :cond_7b
    move v6, v5

    goto :goto_89

    :cond_7d
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v4

    iget-object v2, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_89
    neg-int v1, v1

    iput v1, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->c:I

    if-gez v1, :cond_183

    new-instance v1, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    if-nez p0, :cond_9d

    goto/16 :goto_134

    :cond_9d
    iget-object v2, v1, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    if-nez v2, :cond_a7

    move v2, v8

    goto :goto_a8

    :cond_a7
    move v2, v7

    :goto_a8
    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v3, v4, v8

    aput p0, v4, v7

    const-class v3, I

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move v4, v7

    :goto_b8
    if-ge v4, p0, :cond_102

    iget-object v5, v1, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_fa

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_cd

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_cf

    :cond_cd
    sget-object v6, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_cf
    aget-object v9, v3, v4

    if-eqz v2, :cond_da

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_e0

    :cond_da
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_e0
    sub-int/2addr v10, v11

    aput v10, v9, v7

    aget-object v9, v3, v4

    if-eqz v2, :cond_ee

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_f4

    :cond_ee
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_f4
    add-int/2addr v5, v6

    aput v5, v9, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_b8

    :cond_fa
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "null view contained in the view hierarchy"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_102
    new-instance v2, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector$1;

    invoke-direct {v2, v1}, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector$1;-><init>(Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;)V

    invoke-static {v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v2, v8

    :goto_10b
    if-ge v2, p0, :cond_11d

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    aget v4, v4, v8

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-eq v4, v5, :cond_11a

    goto :goto_136

    :cond_11a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10b

    :cond_11d
    aget-object v2, v3, v7

    aget v2, v2, v8

    aget-object v4, v3, v7

    aget v4, v4, v7

    sub-int/2addr v2, v4

    aget-object v4, v3, v7

    aget v4, v4, v7

    if-gtz v4, :cond_136

    sub-int/2addr p0, v8

    aget-object p0, v3, p0

    aget p0, p0, v8

    if-ge p0, v2, :cond_134

    goto :goto_136

    :cond_134
    :goto_134
    move p0, v8

    goto :goto_137

    :cond_136
    :goto_136
    move p0, v7

    :goto_137
    if-eqz p0, :cond_141

    iget-object p0, v1, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    if-gt p0, v8, :cond_160

    :cond_141
    iget-object p0, v1, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    move v2, v7

    :goto_148
    if-ge v2, p0, :cond_15b

    iget-object v3, v1, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_158

    move p0, v8

    goto :goto_15c

    :cond_158
    add-int/lit8 v2, v2, 0x1

    goto :goto_148

    :cond_15b
    move p0, v7

    :goto_15c
    if-eqz p0, :cond_160

    move p0, v8

    goto :goto_161

    :cond_160
    move p0, v7

    :goto_161
    if-eqz p0, :cond_16b

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16b
    new-instance p0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v8, [Ljava/lang/Object;

    iget v0, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "Page can only be offset by a positive amount, not by %d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_183
    if-nez v6, :cond_187

    const/4 p0, 0x0

    goto :goto_18a

    :cond_187
    int-to-float p0, v1

    int-to-float v1, v6

    div-float/2addr p0, v1

    :goto_18a
    iput p0, v0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->b:F

    return-void
.end method
