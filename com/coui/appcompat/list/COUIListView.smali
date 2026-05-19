.class public Lcom/coui/appcompat/list/COUIListView;
.super Landroid/widget/ListView;
.source ""

# interfaces
.implements Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;
    }
.end annotation


# instance fields
.field public a:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

.field public b:Z

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

.field public n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/list/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/list/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    const/4 v1, -0x2

    iput v1, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    iput v1, p0, Lcom/coui/appcompat/list/COUIListView;->d:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->e:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/list/COUIListView;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/list/COUIListView;->i:I

    iput v1, p0, Lcom/coui/appcompat/list/COUIListView;->j:I

    new-instance v0, Lcom/coui/appcompat/list/COUIListView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/list/COUIListView$1;-><init>(Lcom/coui/appcompat/list/COUIListView;)V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->n:Ljava/lang/Runnable;

    if-eqz p2, :cond_27

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_27
    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIListView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIListView_couiScrollbars:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/list/COUIListView;->j:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIListView_couiScrollbarSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/list/COUIListView;->k:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIListView_couiScrollbarThumbVertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/list/COUIListView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4e
    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->j:I

    const/16 p2, 0x200

    if-ne p1, p2, :cond_76

    new-instance p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;-><init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->a()Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    iget p2, p0, Lcom/coui/appcompat/list/COUIListView;->k:I

    if-eqz p2, :cond_6d

    iget-object p3, p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->h(I)Z

    :cond_6d
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->l:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_76

    iget-object p2, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g(Landroid/graphics/drawable/Drawable;)V

    :cond_76
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_listview_scrollchoice_left_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->f:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_listview_scrollchoice_right_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->g:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public awakenScrollBars()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a()Z

    const/4 p0, 0x0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    :goto_d
    return p0
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    :try_start_17
    iget v4, p0, Lcom/coui/appcompat/list/COUIListView;->i:I

    if-lez v4, :cond_63

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/coui/appcompat/list/COUIListView;->i:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_30} :catch_66

    aget v5, v2, v3

    iget v6, p0, Lcom/coui/appcompat/list/COUIListView;->f:I

    sub-int/2addr v5, v6

    aget v2, v2, v3

    iget v6, p0, Lcom/coui/appcompat/list/COUIListView;->g:I

    add-int/2addr v2, v6

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5a

    if-le v1, v5, :cond_5a

    if-ge v1, v2, :cond_5a

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_5a

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_5a

    iput-boolean v2, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    return v2

    :cond_5a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_62

    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    :cond_62
    return v3

    :cond_63
    :try_start_63
    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_65} :catch_66

    return v3

    :catch_66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_6e

    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    :cond_6e
    return v3
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method public getCOUIScrollDelegate()Lcom/coui/appcompat/scrollbar/COUIScrollBar;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    return-object p0
.end method

.method public getCOUIScrollableView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/AbsListView;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e()Z

    :cond_a
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    iput-object v1, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    :cond_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->f(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    return v1

    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_23

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIListView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v1

    :cond_23
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->f(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eqz v0, :cond_ad

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIListView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_39

    if-eq v4, v1, :cond_33

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3b

    goto/16 :goto_ad

    :cond_33
    iput v3, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    iput v3, p0, Lcom/coui/appcompat/list/COUIListView;->d:I

    goto/16 :goto_ad

    :cond_39
    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->e:Z

    :cond_3b
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_45

    invoke-virtual {p0, v0, v2}, Lcom/coui/appcompat/list/COUIListView;->a(II)V

    :cond_45
    iget-boolean p1, p0, Lcom/coui/appcompat/list/COUIListView;->e:Z

    if-eqz p1, :cond_ac

    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    if-eq p1, v0, :cond_ac

    const/4 p1, -0x1

    if-eq v0, p1, :cond_ac

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->a:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    if-eqz p1, :cond_ac

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->a:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;->a(ILandroid/view/View;)V

    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    if-eq p1, v3, :cond_91

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    const-wide/16 v3, 0x32

    if-ne v0, p1, :cond_7e

    if-lez v0, :cond_7e

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->h:Z

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_91

    :cond_7e
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    if-ne v0, p1, :cond_91

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result p1

    if-ge v0, p1, :cond_91

    iput-boolean v2, p0, Lcom/coui/appcompat/list/COUIListView;->h:Z

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_91
    :goto_91
    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->d:I

    if-ne p1, v0, :cond_a6

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->a:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    iget v2, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;->a(ILandroid/view/View;)V

    :cond_a6
    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->d:I

    iput v0, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    :cond_ac
    return v1

    :cond_ad
    :goto_ad
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v1, :cond_b9

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b9

    goto :goto_c3

    :cond_b9
    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->h:Z

    iput v3, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    iput v3, p0, Lcom/coui/appcompat/list/COUIListView;->d:I

    iput-boolean v2, p0, Lcom/coui/appcompat/list/COUIListView;->e:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    :goto_c3
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_14

    if-nez p2, :cond_14

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e()Z

    :cond_14
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_c

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e()Z

    :cond_c
    return-void
.end method

.method public setCheckItemId(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->i:I

    return-void
.end method

.method public setNewCOUIScrollDelegate(Lcom/coui/appcompat/scrollbar/COUIScrollBar;)V
    .registers 2

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->m:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e()Z

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setNewFastScrollDelegate must NOT be NULL."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScrollMultiChoiceListener(Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->a:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    return-void
.end method

.method public superComputeVerticalScrollExtent()I
    .registers 1

    invoke-super {p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method public superComputeVerticalScrollOffset()I
    .registers 1

    invoke-super {p0}, Landroid/widget/AbsListView;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method public superComputeVerticalScrollRange()I
    .registers 1

    invoke-super {p0}, Landroid/widget/AbsListView;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method public superOnTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
