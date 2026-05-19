.class public Landroidx/recyclerview/widget/COUIGridRecyclerView;
.super Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;,
        Landroidx/recyclerview/widget/COUIGridRecyclerView$GridItemDecoration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GRID_MODE:I = 0x0

.field private static final LARGE_MARGIN:I = 0x0

.field private static final SMALL_MARGIN:I = 0x1

.field public static final SPECIFIC_GAP_MODE:I = 0x1

.field public static final SPECIFIC_SIZE_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "COUIGridRecyclerView"


# instance fields
.field private mChildGridNumber:I

.field private mChildHeight:F

.field private mChildMinHeight:F

.field private mChildMinWidth:F

.field private mChildWidth:F

.field private mColumn:I

.field private mGridMarginType:I

.field private mGridPadding:I

.field private mHorizontalGap:F

.field private mIsIgnoreChildMargin:Z

.field private mMinHorizontalGap:F

.field private mType:I

.field private mVerticalGap:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mIsIgnoreChildMargin:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mIsIgnoreChildMargin:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->initAttr(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mIsIgnoreChildMargin:Z

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->initAttr(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->initGrid()V

    return-void
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mColumn:I

    return p0
.end method

.method public static synthetic access$002(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mColumn:I

    return p1
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mHorizontalGap:F

    return p0
.end method

.method public static synthetic access$1000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildMinWidth:F

    return p0
.end method

.method public static synthetic access$102(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mHorizontalGap:F

    return p1
.end method

.method public static synthetic access$1100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mMinHorizontalGap:F

    return p0
.end method

.method public static synthetic access$1200(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mGridMarginType:I

    return p0
.end method

.method public static synthetic access$1300(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildGridNumber:I

    return p0
.end method

.method public static synthetic access$200(Landroidx/recyclerview/widget/COUIGridRecyclerView;)Z
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->isLayoutRTL()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mVerticalGap:F

    return p0
.end method

.method public static synthetic access$400(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildWidth:F

    return p0
.end method

.method public static synthetic access$402(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildWidth:F

    return p1
.end method

.method public static synthetic access$500(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mGridPadding:I

    return p0
.end method

.method public static synthetic access$502(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mGridPadding:I

    return p1
.end method

.method public static synthetic access$600(Landroidx/recyclerview/widget/COUIGridRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mIsIgnoreChildMargin:Z

    return p0
.end method

.method public static synthetic access$700(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildHeight:F

    return p0
.end method

.method public static synthetic access$702(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildHeight:F

    return p1
.end method

.method public static synthetic access$800(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mType:I

    return p0
.end method

.method public static synthetic access$900(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildMinHeight:F

    return p0
.end method

.method private initAttr(Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView_couiHorizontalGap:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mHorizontalGap:F

    sget p2, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView_minHorizontalGap:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mMinHorizontalGap:F

    sget p2, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView_couiVerticalGap:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mVerticalGap:F

    sget p2, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView_childMinWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildMinWidth:F

    sget p2, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView_childMinHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildMinHeight:F

    sget p2, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView_childHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildHeight:F

    sget p2, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView_childWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildWidth:F

    sget p2, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView_childGridNumber:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildGridNumber:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView_gridMarginType:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mGridMarginType:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIGridRecyclerView_specificType:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mType:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_67
    return-void
.end method

.method private initGrid()V
    .registers 3

    new-instance v0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;-><init>(Landroidx/recyclerview/widget/COUIGridRecyclerView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Landroidx/recyclerview/widget/COUIGridRecyclerView$GridItemDecoration;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$GridItemDecoration;-><init>(Landroidx/recyclerview/widget/COUIGridRecyclerView;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->setPercentIndentEnabled(Z)V

    return-void
.end method

.method private isLayoutRTL()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public setChildGridNumber(I)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildGridNumber:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildHeight(F)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildHeight:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildMinHeight(F)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildMinHeight:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildMinWidth(F)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildMinWidth:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildWidth(F)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mChildWidth:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setGridMarginType(I)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mGridMarginType:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(F)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mHorizontalGap:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setIsIgnoreChildMargin(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mIsIgnoreChildMargin:Z

    return-void
.end method

.method public setMinHorizontalGap(F)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mMinHorizontalGap:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mType:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(F)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView;->mVerticalGap:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method
