.class public Lcom/coui/appcompat/list/COUIForegroundListView;
.super Landroid/widget/ListView;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:Landroidx/appcompat/widget/MenuItemHoverListener;

.field public d:Landroid/view/MenuItem;

.field public e:Z

.field public f:F

.field public g:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->f:F

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->f:F

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->f:F

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->f:F

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/16 v1, 0x15

    const/16 v2, 0x16

    if-ne v0, p1, :cond_18

    iput v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->a:I

    iput v2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->b:I

    goto :goto_1c

    :cond_18
    iput v2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->a:I

    iput v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->b:I

    :goto_1c
    return-void
.end method

.method public isInTouchMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->e:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->c:Landroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_19

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    goto :goto_1c

    :cond_19
    const/4 v1, 0x0

    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    :goto_1c
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_43

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    sub-int/2addr v3, v1

    if-ltz v3, :cond_43

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_43

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    :cond_43
    iget-object v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->d:Landroid/view/MenuItem;

    if-eq v1, v2, :cond_5b

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v1, :cond_52

    iget-object v3, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->c:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-interface {v3, v0, v1}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_52
    iput-object v2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->d:Landroid/view/MenuItem;

    if-eqz v2, :cond_5b

    iget-object v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->c:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-interface {v1, v0, v2}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_5b
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_d

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_d
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_42

    iget v3, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->a:I

    if-ne p1, v3, :cond_42

    instance-of v3, v1, Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-eqz v3, :cond_42

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_41

    check-cast v1, Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/PopupListItem;->a()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v3

    invoke-virtual {p0, v0, p1, v3, v4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_41
    return v2

    :cond_42
    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->b:I

    if-ne p1, v0, :cond_4d

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return v2

    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->g:Landroid/graphics/Path;

    if-nez p1, :cond_f

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->g:Landroid/graphics/Path;

    goto :goto_12

    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    :goto_12
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->g:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p2, p4, p4, p3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 p3, 0x8

    new-array p3, p3, [F

    iget p0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->f:F

    const/4 p4, 0x0

    aput p0, p3, p4

    const/4 p4, 0x1

    aput p0, p3, p4

    const/4 p4, 0x2

    aput p0, p3, p4

    const/4 p4, 0x3

    aput p0, p3, p4

    const/4 p4, 0x4

    aput p0, p3, p4

    const/4 p4, 0x5

    aput p0, p3, p4

    const/4 p4, 0x6

    aput p0, p3, p4

    const/4 p4, 0x7

    aput p0, p3, p4

    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->c:Landroidx/appcompat/widget/MenuItemHoverListener;

    return-void
.end method

.method public setListSelectionHidden(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->e:Z

    return-void
.end method

.method public setRadius(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->f:F

    return-void
.end method
