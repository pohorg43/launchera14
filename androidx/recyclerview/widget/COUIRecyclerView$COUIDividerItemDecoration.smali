.class public Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUIDividerItemDecoration"
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerColor:I

.field private mDividerStrokeWidth:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDividerColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_list_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDividerStrokeWidth:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDividerColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public drawDividerOuterBackground(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .registers 4

    return-void
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerColor()I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDividerColor:I

    return p0
.end method

.method public getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getDividerStrokeWidth()I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDividerStrokeWidth:I

    return p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 17
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_9
    if-ge v11, v9, :cond_7e

    invoke-virtual {p2, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p2, v11}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_7b

    :cond_17
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->drawDividerOuterBackground(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    move v2, v3

    goto :goto_24

    :cond_23
    move v2, v10

    :goto_24
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDividerStrokeWidth:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    if-eqz v2, :cond_41

    invoke-virtual {p0, p2, v11}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v6

    goto :goto_45

    :cond_41
    invoke-virtual {p0, p2, v11}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v6

    :goto_45
    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v6, v1

    if-eqz v2, :cond_59

    invoke-virtual {p0, p2, v11}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v1

    goto :goto_5d

    :cond_59
    invoke-virtual {p0, p2, v11}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v1

    :goto_5d
    int-to-float v1, v1

    sub-float/2addr v6, v1

    float-to-int v1, v6

    iget-object v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_73

    int-to-float v2, v5

    int-to-float v4, v4

    int-to-float v5, v1

    int-to-float v6, v3

    iget-object v12, v0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7b

    :cond_73
    invoke-virtual {v2, v5, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_7b
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_7e
    return-void
.end method

.method public setDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_7
    return-void
.end method

.method public setDividerColor(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDividerColor:I

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_c
    return-void
.end method

.method public setDividerStrokeWidth(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mDividerStrokeWidth:I

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_d
    return-void
.end method

.method public shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, p1

    if-eq p0, p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :cond_10
    :goto_10
    return p1
.end method
