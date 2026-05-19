.class Lcom/coui/appcompat/poplist/COUITouchListView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/COUITouchListView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/COUITouchListView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->a:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 8

    if-nez p4, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->a:Lcom/coui/appcompat/poplist/COUITouchListView;

    iget p3, p1, Lcom/coui/appcompat/poplist/COUITouchListView;->m:I

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p2, p3, :cond_d

    move v1, v0

    goto :goto_e

    :cond_d
    move v1, p4

    :goto_e
    const/4 v2, -0x1

    if-eqz v1, :cond_3f

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->b(Lcom/coui/appcompat/poplist/COUITouchListView;)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->a:Lcom/coui/appcompat/poplist/COUITouchListView;

    iget p2, p2, Lcom/coui/appcompat/poplist/COUITouchListView;->l:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_21

    move p4, v0

    :cond_21
    if-eqz p4, :cond_3a

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->a:Lcom/coui/appcompat/poplist/COUITouchListView;

    iget p3, p2, Lcom/coui/appcompat/poplist/COUITouchListView;->l:I

    if-le p3, p1, :cond_32

    invoke-virtual {p2, v2}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_3a

    iput-boolean v0, p2, Lcom/coui/appcompat/poplist/COUITouchListView;->k:Z

    goto :goto_3a

    :cond_32
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_3a

    iput-boolean v0, p2, Lcom/coui/appcompat/poplist/COUITouchListView;->k:Z

    :cond_3a
    :goto_3a
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->a:Lcom/coui/appcompat/poplist/COUITouchListView;

    iput p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->l:I

    goto :goto_5e

    :cond_3f
    if-le p2, p3, :cond_4a

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_52

    iput-boolean v0, p1, Lcom/coui/appcompat/poplist/COUITouchListView;->k:Z

    goto :goto_52

    :cond_4a
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_52

    iput-boolean v0, p1, Lcom/coui/appcompat/poplist/COUITouchListView;->k:Z

    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->a:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->b(Lcom/coui/appcompat/poplist/COUITouchListView;)I

    move-result p3

    iput p3, p1, Lcom/coui/appcompat/poplist/COUITouchListView;->l:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->a:Lcom/coui/appcompat/poplist/COUITouchListView;

    iput p2, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->m:I

    :goto_5e
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_13

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->a:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->b(Lcom/coui/appcompat/poplist/COUITouchListView;)I

    move-result p2

    iput p2, p1, Lcom/coui/appcompat/poplist/COUITouchListView;->l:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->a:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->m:I

    :cond_13
    return-void
.end method
