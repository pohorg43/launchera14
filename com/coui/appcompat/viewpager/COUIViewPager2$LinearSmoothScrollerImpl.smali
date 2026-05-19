.class Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearSmoothScrollerImpl;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinearSmoothScrollerImpl"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearSmoothScrollerImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v1, v0

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_2c

    neg-int p2, p2

    neg-int p1, p1

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearSmoothScrollerImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->v:I

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_2c
    return-void
.end method
