.class public Lcom/coui/appcompat/calendar/COUICalendarDayViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source ""


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/calendar/COUICalendarDayViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-class v2, Landroidx/viewpager/widget/ViewPager;

    const-string/jumbo v3, "populate"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    if-ne v3, v4, :cond_2c

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eq v3, v4, :cond_2a

    goto :goto_2c

    :cond_2a
    move v3, v1

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v3, v0

    :goto_2d
    move v5, v1

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_31
    const/4 v9, -0x1

    if-ge v5, v2, :cond_73

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_70

    invoke-virtual {p0, v10, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v8, v12}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v8

    if-eqz v3, :cond_70

    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v12, v9, :cond_6b

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v11, v9, :cond_70

    :cond_6b
    iget-object v9, p0, Lcom/coui/appcompat/calendar/COUICalendarDayViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_73
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_ad

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_ad
    invoke-static {v3, p1, v8}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v5, v8, 0x10

    invoke-static {v2, p2, v5}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_124

    :goto_c2
    if-ge v1, v2, :cond_124

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v9, :cond_e9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_f8

    :cond_e9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    :goto_f8
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v9, :cond_10f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_11e

    :cond_10f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v7, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    :goto_11e
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    :cond_124
    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
