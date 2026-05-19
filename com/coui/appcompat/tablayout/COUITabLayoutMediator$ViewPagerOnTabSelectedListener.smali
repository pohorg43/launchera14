.class Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field public final a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

.field public b:[I

.field public c:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->b:[I

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->c:Landroid/view/animation/PathInterpolator;

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/tablayout/COUITab;)V
    .registers 2

    return-void
.end method

.method public b(Lcom/coui/appcompat/tablayout/COUITab;)V
    .registers 14

    iget-object v0, p1, Lcom/coui/appcompat/tablayout/COUITab;->b:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->getSelectedByClick()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_116

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-gtz v1, :cond_19

    goto/16 :goto_116

    :cond_19
    iget p1, p1, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v3, :cond_45

    return-void

    :cond_45
    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->b:[I

    aput v1, v4, v1

    aput v1, v4, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_53

    goto :goto_b2

    :cond_53
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5a

    goto :goto_b2

    :cond_5a
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_72

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    :cond_72
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v8, v7

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_89

    neg-int v8, v8

    :cond_89
    sub-int/2addr p1, v4

    mul-int/2addr p1, v8

    add-int/2addr p1, v5

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->b:[I

    aput p1, v3, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x3

    int-to-float v5, v5

    if-gt p1, v4, :cond_a0

    const/16 p1, 0x15e

    goto :goto_b0

    :cond_a0
    int-to-float p1, p1

    cmpl-float v4, p1, v5

    if-lez v4, :cond_a8

    const/16 p1, 0x28a

    goto :goto_b0

    :cond_a8
    const/high16 v4, 0x43af0000  # 350.0f

    const/high16 v6, 0x43960000  # 300.0f

    div-float/2addr p1, v5

    mul-float/2addr p1, v6

    add-float/2addr p1, v4

    float-to-int p1, p1

    :goto_b0
    aput p1, v3, v2

    :goto_b2
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p1, p1, Lcom/coui/appcompat/viewpager/COUIViewPager2;->n:Lcom/coui/appcompat/viewpager/COUIFakeDrag;

    iget-object v3, p1, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->b:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    iget v3, v3, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->f:I

    if-ne v3, v2, :cond_be

    move v3, v2

    goto :goto_bf

    :cond_be
    move v3, v1

    :goto_bf
    if-eqz v3, :cond_c2

    goto :goto_10b

    :cond_c2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->e:J

    iget-object v3, p1, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->d:Landroid/view/VelocityTracker;

    if-nez v3, :cond_e0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p1, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->d:Landroid/view/VelocityTracker;

    iget-object v3, p1, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    goto :goto_e3

    :cond_e0
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :goto_e3
    iget-object v3, p1, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->b:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    const/4 v4, 0x4

    iput v4, v3, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->e:I

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->startDrag(Z)V

    iget-object v3, p1, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->b:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    invoke-virtual {v3}, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->isIdle()Z

    move-result v3

    if-nez v3, :cond_f8

    iget-object v3, p1, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_f8
    iget-wide v6, p1, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->e:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v6

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object p1, p1, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->d:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :goto_10b
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->b:[I

    aget v3, p1, v1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->c:Landroid/view/animation/PathInterpolator;

    aget p1, p1, v2

    invoke-virtual {v0, v3, v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    :cond_116
    :goto_116
    return-void
.end method

.method public c(Lcom/coui/appcompat/tablayout/COUITab;)V
    .registers 2

    return-void
.end method
